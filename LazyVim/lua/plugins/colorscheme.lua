return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "night" },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
