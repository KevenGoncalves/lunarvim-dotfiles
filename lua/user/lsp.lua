local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

require 'lspconfig'.tsserver.setup {
  capabilities = capabilities,
  handlers = {
    ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      { virtual_text = false, signs = true, update_in_insert = false, underline = true }
    ),
  }
}

require('go').setup({
  diagnostic = false,
  lsp_cfg = {
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          ST1003 = false,
        },
        codelenses = {
          gc_details = false
        }
      }
    },
  },
})

require "lspconfig".pyright.setup {
  capabilities = capabilities,
}

require 'lspconfig'.tailwindcss.setup {
  filetypes = { "astro" }
}

require 'lspconfig'.emmet_ls.setup {
  filetypes = { "typescriptreact", "javascriptreact" }
}

local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

configs.sqllsp = {
  default_config = {
    cmd = { 'sqls' },
    filetypes = { 'sql' },
    root_dir = function(fname)
      return lspconfig.util.find_git_ancestor(fname)
    end,
    settings = {
      capabilities = capabilities,
    },
  },
}

lspconfig.sqllsp.setup {}
