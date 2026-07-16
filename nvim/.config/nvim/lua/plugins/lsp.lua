return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Tell all language servers to NEVER send snippets
    capabilities = {
      textDocument = {
        completion = {
          completionItem = {
            snippetSupport = false,
          },
        },
      },
    },
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
