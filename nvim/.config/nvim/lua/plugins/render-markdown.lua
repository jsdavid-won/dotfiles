return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    code = {
      above = "",
      below = "",
      highlight = "",
    },
  },
  config = function(_, opts)
    require("render-markdown").setup(opts)
    vim.api.nvim_set_hl(0, "RenderMarkdownCodeBorder", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "RenderMarkdown_RenderMarkdownCodeBorder_bg_as_fg", { bg = "NONE" })
  end,
}
