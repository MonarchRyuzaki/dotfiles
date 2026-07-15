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

-- 4. Move lines up and down with Alt + Arrows
map("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
