return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      golangcilint = {
        args = {
          "run",
          "--output.json.path",
          "stdout", -- The new flag format
          "--show-stats=false",
          "--output.text.print-issued-lines=false",
          "--output.text.print-linter-name=false",
          function()
            return vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":h")
          end,
        },
      },
    },
  },
}
