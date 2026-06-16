-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local function set_custom_highlights()
  -- Fix dimmed visible tabs (#494d64 → #939ab7)
  vim.api.nvim_set_hl(0, "BufferLineBufferVisible", { fg = "#939ab7" })
  vim.api.nvim_set_hl(0, "BufferLineCloseButtonVisible", { fg = "#939ab7" })
  vim.api.nvim_set_hl(0, "BufferLineModifiedVisible", { fg = "#939ab7" })
  -- Make "Explorer" and the sections around and above it transparent
  vim.api.nvim_set_hl(0, "FloatTitle", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksPickerBorder", { bg = "NONE" })
  -- Make which-key border transparent
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
  -- Cursor line color
  vim.api.nvim_set_hl(0, "CursorLine", { bg = "#494d64" })
  -- blink.cmp menu and menu border color
  vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = "NONE" })

  -- Make line numbers pop a little more (same color as comments)
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#939ab7" })
end

-- Call function immediatley and once color scheme is set (no timing issues this way)
set_custom_highlights()
vim.api.nvim_create_autocmd("ColorScheme", { callback = set_custom_highlights })
