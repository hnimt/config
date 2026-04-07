return {
  -- 1. Install the theme plugin from GitHub
  { "ellisonleao/gruvbox.nvim" },

  -- 2. Configure LazyVim to load it by default
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox", -- Replace with your chosen theme name
      colorscheme = "catppuccin-mocha", -- Replace with your chosen theme name
    },
  },
}
