require('multicursors').setup {
  hint_config = false,
}

local function is_active()
  local ok, hydra = pcall(require, 'hydra.statusline')
  return ok and hydra.is_active()
end

local function get_name()
  local ok, hydra = pcall(require, 'hydra.statusline')
  if ok then
    return hydra.get_name()
  end
  return ''
end

--- for lualine add this component

lvim.builtin.lualine.sections.lualine_a = { { "mode", icons_enabled = true, icon = "" } }
lvim.builtin.lualine.sections.lualine_b = { { "branch", icon = "" }, "diffs" }
lvim.builtin.lualine.sections.lualine_x = { { require('NeoComposer.ui').status_recording }, { get_name, cond = is_active },
  "diagnostics", { "filetype" } }
lvim.builtin.lualine.sections.lualine_y = { { "location", icons_enabled = true, icon = "" } }
lvim.builtin.lualine.sections.lualine_z = { { "progress", icons_enabled = true, icon = "" } }
lvim.builtin.lualine.options.component_separators = { left = '', right = '' }
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
lvim.builtin.lualine.options.icons_enabled = true
lvim.builtin.lualine.options.ignore_focus = { "NvimTree", "alpha", "toggleterm", "packer" }
lvim.builtin.lualine.options.theme = "catppuccin"
