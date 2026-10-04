#!/usr/bin/env bash
set -e

SOURCE_DIR="$HOME/.config/BraveSoftware/Brave-Browser"
TARGET_DIR="$HOME/.config/brave-playwright-profile"

mkdir -p "$TARGET_DIR/Default"

# Sync Brave session configuration, logins, and cookies if source exists
if [ -d "$SOURCE_DIR" ]; then
    # Sync root state files
    for file in "Local State" "Preferences"; do
        if [ -f "$SOURCE_DIR/$file" ]; then
            cp -u "$SOURCE_DIR/$file" "$TARGET_DIR/$file" 2>/dev/null || cp "$SOURCE_DIR/$file" "$TARGET_DIR/$file" 2>/dev/null || true
        fi
    done

    # Sync Default profile cookies, logins, and storage
    for item in "Cookies" "Extension Cookies" "Login Data" "Login Data For Account" "Web Data" "Preferences" "Secure Preferences" "Network Persistent State"; do
        if [ -f "$SOURCE_DIR/Default/$item" ]; then
            cp "$SOURCE_DIR/Default/$item" "$TARGET_DIR/Default/$item" 2>/dev/null || true
        fi
    done
fi

# Remove any stale lock files from previous runs
rm -f "$TARGET_DIR/SingletonLock" "$TARGET_DIR/SingletonCookie" "$TARGET_DIR/SingletonSocket"

# Playwright passes an ephemeral --user-data-dir flag by default; replace it with our persistent synced profile directory
filtered_args=()
for arg in "$@"; do
    if [[ "$arg" == --user-data-dir=* ]]; then
        continue
    fi
    filtered_args+=("$arg")
done

exec /usr/bin/brave-browser --user-data-dir="$TARGET_DIR" --password-store=basic "${filtered_args[@]}"
