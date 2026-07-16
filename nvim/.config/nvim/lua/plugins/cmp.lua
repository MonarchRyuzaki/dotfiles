return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_and_accept", "fallback" },
      ["<CR>"] = { "accept", "fallback" },
      -- Use Shift+F1 (terminals often send this as F13) to manually show the autocomplete menu
      ["<S-F1>"] = { "show", "show_documentation", "hide_documentation" },
      ["<F13>"] = { "show", "show_documentation", "hide_documentation" },
    },
    sources = {
      -- Excludes 'snippets' from the default providers
      default = { "lsp", "path", "buffer" },

      transform_items = function(_, items)
        return vim.tbl_filter(function(item)
          if item.kind == 15 or string.sub(item.label, -1) == "~" then
            return false
          end
          return true
        end, items)
      end,
    },
    signature = {
      enabled = false,
      window = {
        border = "rounded",
        show_documentation = false,
      },
    },
    completion = {
      accept = {
        auto_brackets = {
          enabled = false,
          kind_resolution = {
            enabled = true,
            blocked_filetypes = {},
          },
        },
      },
      list = {
        selection = { preselect = true, auto_insert = false },
      },
      menu = {
        auto_show = true,
        border = "rounded",
        draw = {
          columns = { { "kind_icon" }, { "label", "label_description", gap = 1 } },
        },
      },
      keyword = {
        range = "prefix",
      },
      documentation = {
        auto_show = false,
        auto_show_delay_ms = 500,
        window = {
          border = "rounded",
          max_width = 60,
          max_height = 15,
        },
      },
    },

    fuzzy = {
      use_frecency = false,
      use_proximity = true,
      sorts = {
        "exact",
        "score",
        "sort_text",
      },
    },
  },
}
