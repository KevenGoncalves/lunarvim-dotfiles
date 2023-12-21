local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettierd",
    filetypes = {
      "javascript",
      "typescript",
      "typescriptreact",
      "javascriptreact",
      "html",
      "css",
      "scss",
      "svelte",
    }
  },
  { command = "markdownlint", filetypes = { "markdown" } },
  { command = "yamlfmt",      filetypes = { "yaml" } },
  { command = "prismaFmt",    filetypes = { "prisma" } },
  { command = "autoflake",    filetypes = { "python" } },
  { command = "autopep8",     filetypes = { "python" } },
}
