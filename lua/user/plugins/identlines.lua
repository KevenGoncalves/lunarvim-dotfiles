lvim.builtin.indentlines.options.use_treesitter = true
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.indentlines.options.show_trailing_blankline_indent = true

require("indent_blankline").setup {
  show_current_context = true,
  show_current_context_start = true,
  char = "▏",
}
