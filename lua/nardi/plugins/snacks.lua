return {
 "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
      bigfile = { enabled = true },
      image = { enabled = true },
      indent = { enabled = true },
      lazygit = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
  },
  keys = {
    { "<leader>gl", function() Snacks.lazygit.open() end, desc = "Opens lazygit" },
  }
}
