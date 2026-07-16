-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Auto-save on focus lost
vim.api.nvim_create_autocmd("FocusLost", {
  group = vim.api.nvim_create_augroup("autosave_focuslost", { clear = true }),
  callback = function()
    -- Format the current buffer synchronously before saving
    pcall(function() require("conform").format({ bufnr = 0, async = false }) end)
    -- 'wa' saves all modified buffers
    vim.cmd("silent! wa")
  end,
  desc = "Save files when Neovim loses focus",
})
