require("NeoComposer").setup({
  queue_most_recent = true,
  colors = {
    red = "#f38ba9",
    blue = "#89b4fa",
    green = "#a6e3a1",
  },
  keymaps = {
    toggle_record = "q",
    play_macro = "<c-.>",
    cycle_next = "<m-]>",
    cycle_prev = "<m-[>",
  },
})

local telescope = require('telescope')
telescope.load_extension('macros')
require('NeoComposer.ui').status_recording()


local hl = require("actions-preview.highlight")
require("actions-preview").setup {
  -- telescope = {
  --   layout_strategy = "center",
  --   layout_config = {
  --     height = 0.3,
  --     prompt_position = "top",
  --     preview_cutoff = 5,
  --   },
  -- },

  telescope = {
    sorting_strategy = "ascending",
    layout_strategy = "vertical",
    layout_config = {
      width = 0.8,
      height = 0.9,
      prompt_position = "top",
      preview_cutoff = 20,
      preview_height = function(_, _, max_lines)
        return max_lines - 15
      end,
    },
  },
  highlight_command = {
    hl.delta("delta --no-gitconfig --side-by-side --paging=always"),
  },
}


require('multicursors').setup {
  hint_config = {
    border = 'rounded',
    position = 'bottom-right',
  },
  generate_hints = {
    normal = true,
    insert = true,
    extend = true,
    config = {
      column_count = 1,
    },
  },
}
