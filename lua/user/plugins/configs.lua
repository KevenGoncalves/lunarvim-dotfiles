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

local t = require("telescope")
local z_utils = require("telescope._extensions.zoxide.utils")

-- Configure the extension
---@diagnostic disable-next-line: redundant-parameter
t.setup({
  extensions = {
    zoxide = {
      prompt_title = "[ Zoxide List ]",
      mappings = {
        default = {
          after_action = function(selection)
            print("Update to (" .. selection.z_score .. ") " .. selection.path)
          end
        },
        ["<C-s>"] = {
          before_action = function(selection) print("before C-s") end,
          action = function(selection)
            vim.cmd.edit(selection.path)
          end
        },
        ["<C-q>"] = { action = z_utils.create_basic_command("split") },
      },
    },
  },
})

-- Load the extension
t.load_extension('zoxide')

-- Add a mapping
lvim.builtin.which_key.mappings["z"] = { t.extensions.zoxide.list, "Zoxide" }
