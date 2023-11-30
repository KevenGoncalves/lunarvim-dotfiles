require("NeoComposer").setup({
  queue_most_recent = true,
  colors = {
    red = "#f38ba9",
    blue = "#89b4fa",
    green = "#a6e3a1",
  },
  keymaps = {
    play_macro = ".",
    cycle_next = "<m-]>",
    cycle_prev = "<m-[>",
  },
})
require('telescope').load_extension('macros')
require('NeoComposer.ui').status_recording()
