lvim.colorscheme = "catppuccin-mocha"

require("catppuccin").setup({
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  integrations = {
    notify = true,
    mini = true,
    noice = true,
    navic = {
      enabled = true,
      custom_bg = "NONE"
    },
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    }
  }
})
