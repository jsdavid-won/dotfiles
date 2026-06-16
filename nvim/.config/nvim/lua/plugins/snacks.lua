return {
  "folke/snacks.nvim",
  opts = { dashboard = { enabled = false } },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer (root)",
    },
    {
      "<leader>E",
      function()
        Snacks.explorer({ cwd = LazyVim.root.cwd() })
      end,
      desc = "Explorer (cwd)",
    },
    {
      "<leader>fe",
      function()
        Snacks.explorer({ layout = "default" })
      end,
      desc = "Explorer (float) (root)",
    },
    {
      "<leader>fE",
      function()
        Snacks.explorer({ layout = "default", cwd = LazyVim.root.cwd() })
      end,
      desc = "Explorer (float) (cwd)",
    },
  },
}
