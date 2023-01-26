return {
  -- Install colorschemes
  { "ellisonleao/gruvbox.nvim" },
  {
    "rose-pine/neovim",
    config = function()
      require("rose-pine").setup({
        dark_variant = "moon",
        disable_italics = true,
      })
    end,
  },

  -- Configure LazyVim to load a nice theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
