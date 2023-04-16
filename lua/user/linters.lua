local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "markdownlint", filetypes = { "markdown" } },
  {
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "html" },
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
