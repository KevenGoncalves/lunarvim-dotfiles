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
    hop = true,
    harpoon = true,
    ts_rainbow2 = true,
    mason = true,
    lsp_trouble = false,
    which_key = false,
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
