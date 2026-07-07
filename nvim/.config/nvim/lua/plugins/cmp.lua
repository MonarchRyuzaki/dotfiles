return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<CR>"]  = { "accept", "fallback" },
    },
    sources = {
      -- Excludes 'snippets' from the default providers
      default = { "lsp", "path", "buffer" },
    },
  },
}
