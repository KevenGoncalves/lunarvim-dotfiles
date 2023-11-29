lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.{php,ts,tsx,js,jsx,lua,html,css,scss,md,json,yaml,yml,prisma,astro,svelte,cpp,c,go}",
  timeout = 1000,
}
lvim.builtin.terminal.active = true
lvim.builtin.dap.active = true
lvim.builtin.project.manual_mode = true

require('telescope').load_extension('media_files')

---@diagnostic disable:redundant-parameter
require('telescope').setup {
  extensions = {
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg", "mp4", "pdf", "svg" },
      find_cmd = "rg"
    }
  },
}
