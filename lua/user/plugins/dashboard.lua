lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.footer.val = {}
lvim.builtin.alpha.dashboard.section.buttons.val[5] = {
  opts = {
    align_shortcut = "right",
    cursor = 5,
    hl_shortcut = "Include",
    keymap = {
      "n", "l", "<CMD>:lua require('persistence').load({ last = true })<CR>",
      { noremap = true, nowait = true, silent = true }
    },
    position = "center",
    shortcut = "l",
    width = 50
  },
  type = "button",
  val = "  Restore Last Session"
}
