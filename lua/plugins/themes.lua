-- NOTE to self: when installng a new theme, always add entry to themery
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "zaldih/themery.nvim",
    lazy = false,
    opts = {
      themes = {
        "tokyonight",
        "tokyonight-night",
        "tokyonight-storm",
        "tokyonight-day",
        "tokyonight-moon"
      },
      livePreview = true,
    }
  }
}
