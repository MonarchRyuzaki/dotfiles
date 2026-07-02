return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      -- Set up your custom VS Code style mapping
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
      }
    end,
  },
}
