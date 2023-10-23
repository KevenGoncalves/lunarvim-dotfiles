-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "sqlls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- require("lvim.lsp.manager").setup("sqlls", {
--   cmd = { "sql-language-server", "up", "--method", "stdio" },
--   filetypes = { "sql", "mysql" },
--   root_dir = function() return vim.loop.cwd() end,
-- })
--

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

local client_id = vim.lsp.start_client({
  name = "samorals",
  filetypes = { "sml" },
  autostart = true,
  cmd = { "/Users/kevengoncalves/Side-Projects/samoralang-language-server/tmp/main" },
});

vim.lsp.buf_attach_client(0, client_id)
