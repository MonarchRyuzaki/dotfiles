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
    signature = {
      enabled = true,
      window = { border = "rounded" },
    },
    completion = {
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 500,
        window = { border = "rounded" },
      },
      menu = {
        border = "rounded",
      },
    },
  },
}
