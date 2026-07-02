-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- 1. Save all and quit with 'QQ' in normal mode
map("n", "QQ", "<cmd>wqall<CR>", { desc = "Save all and quit" })

-- 2. Copy lines down with Ctrl+Shift+Down
map("n", "<C-S-Down>", "<cmd>t.<CR>", { desc = "Copy line down" })
map("x", "<C-S-Down>", ":t'><CR>gv", { desc = "Copy selection down" }) -- For visual mode

-- 3. Copy lines up with Ctrl+Shift+Up
map("n", "<C-S-Up>", "<cmd>t -1<CR>", { desc = "Copy line up" })
map("x", "<C-S-Up>", ":t'<-1<CR>gv", { desc = "Copy selection up" }) -- For visual mode
