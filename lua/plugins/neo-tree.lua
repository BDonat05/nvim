return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false, -- neo-tree will lazily load itself
  opts = {
    close_if_last_window = false;
    window = {
      position = "left",
      width = 25,
    }
  }
}
