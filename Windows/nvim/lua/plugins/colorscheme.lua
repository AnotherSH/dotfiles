return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },

  {
    "blazkowolf/gruber-darker.nvim",
    enabled = false,
  },

  {
    "fdemb/doom-monokai-pro.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("doom-monokai-pro").setup({
        -- your config here
        transparent_background = false,
        terminal_colors = true,
        dim_inactive = {
          enabled = false,
          percentage = 0.15,
        },
        styles = {
          comments = { "italic" },
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          neotree = true,
          treesitter = true,
          telescope = true,
          lsp_trouble = true,
          which_key = true,
          indent_blankline = true,
          dashboard = true,
          bufferline = true,
          mason = true,
          noice = true,
          notify = true,
          mini = true,
          flash = true,
          leap = true,
          markdown = true,
          native_lsp = {
            enabled = true,
            underlines = {
              errors = { "undercurl" },
              hints = { "undercurl" },
              warnings = { "undercurl" },
              information = { "undercurl" },
            },
          },
        },
      })
      vim.cmd.colorscheme("doom-monokai-pro")
    end,
  },

  -- cursor theme
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      -- cursor_color = "#ffdd33", -- blue: #00a2e8

      -- Faster smear
      --	stiffness = 0.8,                      -- 0.6      [0, 1]
      --	trailing_stiffness = 0.6,             -- 0.45     [0, 1]
      --	stiffness_insert_mode = 0.7,          -- 0.5      [0, 1]
      --	trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      --	damping = 0.95,                       -- 0.85     [0, 1]
      --	damping_insert_mode = 0.95,           -- 0.9      [0, 1]
      --	distance_stop_animating = 0.5,        -- 0.1      > 0
    },
  },
}
