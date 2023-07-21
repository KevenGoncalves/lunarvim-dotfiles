lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.{php,ts,tsx,js,jsx,lua,html,css,scss,md,json,yaml,yml,prisma,astro,svelte,cpp,c,go}",
  -- pattern = "*.*",
  timeout = 1000,
}
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.project.manual_mode = true

local util = require 'lspconfig.util'

require 'lspconfig'.dartls.setup {
  cmd = { 'dart', 'language-server', '--protocol=lsp' },
  filetypes = { 'dart' },
  root_dir = util.root_pattern 'pubspec.yaml',
  init_options = {
    onlyAnalyzeProjectsWithOpenFiles = true,
    suggestFromUnimportedLibraries = true,
    closingLabels = true,
    outline = true,
    flutterOutline = true,
  },
  settings = {
    dart = {
      completeFunctionCalls = true,
      showTodos = true,
    },
  },
}
