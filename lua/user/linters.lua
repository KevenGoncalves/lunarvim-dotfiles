local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "markdownlint", filetypes = { "markdown" } },
  {
    command = "eslint_d",
    filetypes = { "typescript", "svelte", "astro", "typescriptreact", "javascript", "javascriptreact", "html" },
  },
  { command = "gitlint",      filetypes = { "git" } },
  { command = "jsonlint",     filetypes = { "json" } },
  { command = "yamllint",     filetypes = { "yaml" } }
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    exe = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "astro", "svelte" },
  },
}

require 'lspconfig'.eslint.setup {
  -- Copied from nvim-lspconfig/lua/lspconfig/server_conigurations/eslint.js
  root_dir = util.root_pattern(
    '.eslintrc',
    '.eslintrc.js',
    '.eslintrc.cjs',
    '.eslintrc.yaml',
    '.eslintrc.yml',
    '.eslintrc.json'
  -- Disabled to prevent "No ESLint configuration found" exceptions
  -- 'package.json',
  ),
}
