return {
  -- { "ellisonleao/gruvbox.nvim" },
  {
    "sainnhe/everforest",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "catppuccin/nvim",
    name = 'catppuccin',
    config = function()
      require("catppuccin").setup {
        term_colors = true,
        priority = 1000,
        flavour = 'mocha',
        transparent_background = true,
        dim_inactive = {
          enabled = false,
          shade = "dark",
          percentage = 0.5
        },
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
