lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.footer.val = {}
lvim.builtin.alpha.dashboard.section.buttons.entries[5] = {
  "l",
  "  Restore Last Session",
  "<CMD>:lua require('persistence').load({ last = true })<CR>",
}
lvim.builtin.alpha.dashboard.section.buttons.entries[7] = {
  "g",
  "󰚩  ChatGPT",
  ":ChatGPT<CR>"
}
lvim.builtin.alpha.dashboard.section.buttons.entries[8] = {
  "q",
  "󰅖  Quit",
  "<CMD>quit<CR>"
}
