return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          completion = {
            callable = {
              snippets = "add_parentheses", -- Forces only () without arguments
            },
          },
        },
      },
    },
  },
}
