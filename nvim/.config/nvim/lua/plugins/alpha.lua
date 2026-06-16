return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")

    local neovim_logo = require("custom.neovim-logo")
    local art = require("custom.frieren2")

    local logo_section = {
      type = "text",
      val = vim.split(neovim_logo, "\n"),
      opts = { hl = "AlphaHeader", position = "center" },
    }

    local art_section = {
      type = "text",
      val = vim.split(art, "\n"),
      opts = { hl = "AlphaHeader", position = "center" },
    }

    -- stylua: ignore
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file",       "<cmd> lua LazyVim.pick()() <cr>"),
      dashboard.button("r", " " .. " Recent files",    [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
      dashboard.button("c", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
      dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
      dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"

    dashboard.opts.layout = {
      { type = "padding", val = 4 },
      logo_section,
      { type = "padding", val = 0 },
      art_section,
      { type = "padding", val = 1 },
      dashboard.section.buttons,
      dashboard.section.footer,
    }
    return dashboard
  end,
}
