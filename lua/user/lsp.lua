-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "sqlls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- require("lvim.lsp.manager").setup("sqlls", {
--   cmd = { "sql-language-server", "up", "--method", "stdio" },
--   filetypes = { "sql", "mysql" },
--   root_dir = function() return vim.loop.cwd() end,
-- })


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
  -- diagnostic = {  -- set diagnostic to false to disable vim.diagnostic setup
  --   hdlr = false, -- hook lsp diag handler and send diag to quickfix
  --   underline = true,
  --   -- virtual text setup
  --   virtual_text = { spacing = 0, prefix = '■' },
  --   signs = true,
  --   update_in_insert = false,
  -- },
  diagnostic = false,
  lsp_cfg = {
    capabilities = capabilities,
    settings = {
      gopls = {
        analyses = {
          ST1003 = false,
        }
      }
    },
  },
})

require 'lspconfig'.tailwindcss.setup {
  filetypes = { "astro" }
}

-- local util = require 'lspconfig.util'
-- require 'lspconfig'.dartls.setup {
--   cmd = { 'dart', 'language-server', '--protocol=lsp' },
--   filetypes = { 'dart' },
--   root_dir = util.root_pattern 'pubspec.yaml',
--   init_options = {
--     onlyAnalyzeProjectsWithOpenFiles = true,
--     suggestFromUnimportedLibraries = true,
--     closingLabels = true,
--     outline = true,
--     flutterOutline = true,
--   },
--   settings = {
--     dart = {
--       completeFunctionCalls = true,
--       showTodos = true,
--     },
--   },
-- }

-- local client_id = vim.lsp.start_client({
--   name = "samorals",
--   filetypes = { "sml" },
--   autostart = true,
--   cmd = { "/Users/kevengoncalves/Side-Projects/samoralang-language-server/tmp/main" },
-- });

-- vim.lsp.buf_attach_client(0, client_id)
