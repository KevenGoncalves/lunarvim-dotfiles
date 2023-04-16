local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css", "scss", "svelte",
      "astro" }
  },
  { command = "markdownlint", filetypes = { "markdown" } },
  { command = "yamlfmt",      filetypes = { "yaml" } },
  { command = "prismaFmt",    filetypes = { "prisma" } }
}
