lvim.colorscheme = "catppuccin-mocha"

-- asdas
require("catppuccin").setup({
  custom_highlights = function(colors)
    return {
      IndentBlanklineContextChar = { fg = colors.text },
      IndentBlanklineContextStart = { sp = colors.text, style = { "underline" } },
      ["@lsp.type.comment.go"] = { sp = colors.none }
    }
  end,
  flavour = "mocha",
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  integrations = {
    notify = true,
    mini = {
      enabled = true,
      indentscope_color = ""
    },
    gitsigns = true,
    noice = true,
    nvimtree = true,
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
      scope_color = "",
      colored_indent_levels = false,
    },
    dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    },
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
      },
      inlay_hints = {
        background = true,
      },
    },
  }
})


require("nvim-treesitter.configs").setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
}
