# MonarchRyuzaki's Dotfiles

This repository contains all the configuration files for my customized terminal environment, managed using GNU Stow.

## Included Configurations
- **bash**: Contains `.bashrc` (aliases, zoxide, eza, fastfetch)
- **tmux**: Contains `.tmux.conf` (Catppuccin Mocha theme, mouse support)
- **kitty**: Contains Kitty terminal configuration (JetBrains Mono Nerd Font, Macchiato background)
- **nvim**: Contains Neovim configuration based on LazyVim
- **starship**: Contains the Starship prompt configuration
- **yazi**: Contains Yazi terminal file manager configuration
- **gnome**: Contains OS themes, icons, GNOME extensions, and `dconf` desktop settings.

## How to Restore on a New Machine

1. **Install Prerequisites:**
Make sure you have installed the core tools:
```bash
sudo apt install stow git curl wget unzip tmux
```

2. **Clone this Repository:**
Clone the repository exactly into your home directory under `~/dotfiles`:
```bash
git clone https://github.com/MonarchRyuzaki/dotfiles.git ~/dotfiles
```

3. **Restore the Symlinks (The Magic Part):**
Navigate into the folder and use `stow` to instantly map all configurations to their correct system locations:
```bash
cd ~/dotfiles
stow bash tmux kitty nvim starship yazi gnome
```

4. **Install Specific Dependencies:**
*   **Kitty**: `sudo apt install kitty`
*   **Fonts**: Download JetBrains Mono Nerd Font to `~/.local/share/fonts` and run `fc-cache -f`
*   **CLI Utilities**: Install `zoxide`, `eza`, `yazi`, `fastfetch`, `bat`, `ripgrep` (rg), `fd`, `jq`, `lazygit`, and `lazydocker` via their respective package managers.
*   **Tmux Plugins**: Open tmux and press `Ctrl+b` then `Shift+i` to install the Catppuccin theme.

5. **Restore GNOME OS Customizations:**
After stowing, restore the GNOME desktop settings (themes, extensions, docks) by loading the dconf database snapshot:
```bash
dconf load /org/gnome/ < ~/dotfiles/gnome/gnome-settings.ini
```
*(Note: To back up new GNOME changes later before a commit, run: `dconf dump /org/gnome/ > ~/dotfiles/gnome/gnome-settings.ini`)*

Everything will instantly snap into place!
