return {
  -- Disable color highlighting in mini.hipatterns (keep TODO/FIXME/etc)
  {
    "nvim-mini/mini.hipatterns",
    opts = {
      highlighters = {
        hex_color = { pattern = nil },
      },
    },
  },

  -- Add nvim-highlight-colors for broader color support
  {
    "brenoprata10/nvim-highlight-colors",
    event = "LazyFile",
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
}
