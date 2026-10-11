return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    indent = { enable = true },
    highight = { enable = true },
    folds = { enable = true },
    ensure_installed = {
      "bash",
      "c",
      "lua",
      "markdown",
      "rust",
    },
  }
}
