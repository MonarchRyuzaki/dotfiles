return {
  {
    "okuuva/auto-save.nvim",
    lazy = false, -- Load immediately at startup
    opts = {
      debounce_delay = 500, -- Wait 500ms after last keystroke before saving
      execution_message = {
        message = function()
          return ""
        end, -- Hides the "AutoSave" message
      },
    },
    keys = {
      -- Press <leader>uv to turn autosave on and off
      { "<leader>uv", "<cmd>ASToggle<CR>", desc = "Toggle auto-save" },
    },
  },
}
