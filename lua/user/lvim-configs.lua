lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.{php,ts,tsx,js,jsx,lua,html,css,scss,md,json,yaml,yml,prisma,astro,svelte,cpp,c,go,vue,py,rs,java,xml}",
  timeout = 1000,
}
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.project.manual_mode = false

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })
