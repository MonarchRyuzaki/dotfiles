return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            -- This disables the annoying auto-filled arguments!
            usePlaceholders = false,
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            completion = {
              callable = {
                snippets = "none",
              },
            },
          },
        },
      },
    },
  },
}
