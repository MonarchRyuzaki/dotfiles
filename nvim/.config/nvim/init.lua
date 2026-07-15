-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Better soft wrapping settings for init.lua
vim.opt.wrap = true -- Enable wrapping
vim.opt.linebreak = true -- Wrap lines at convenient points (like spaces) instead of mid-word
vim.opt.breakindent = true -- Wrapped lines retain the same indentation level
