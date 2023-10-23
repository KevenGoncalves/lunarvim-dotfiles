require("noice").setup({
  routes = {
    {
      view = "notify",
      filter = { event = "msg_showmode" },
    },
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "written",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "change",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "lines",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "lines yanked",
      },
      opts = { skip = true },
    },
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "fewer lines",
      },
      opts = { skip = true },
    },

  },
  lsp = {
    progress = {
      enabled = false,
      view = false,
    },
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    hover = {
      -- temporary
      enabled = false,
    },
    signature = {
      -- temporary
      enabled = false
    },
    documentation = {
      view = "hover",
      opts = {
        lang = "markdown",
        replace = true,
        render = "plain",
        format = { "{message}" },
        win_options = { concealcursor = "n", conceallevel = 3 },
      },
    },
  },
  smart_move = {
    -- noice tries to move out of the way of existing floating windows.
    enabled = true, -- you can disable this behaviour here
    -- add any filetypes here, that shouldn't trigger smart move.
    excluded_filetypes = { "cmp_menu", "cmp_docs", "notify" },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = false,        -- use a classic bottom cmdline for search
    command_palette = true,       -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true,            -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true,        -- add a border to hover docs and signature help
  },


  messages = {
    enabled = true,              -- enables the Noice messages UI
    -- view = false,                -- default view for messages
    view = "notify",             -- default view for messages
    view_error = "notify",       -- view for errors
    view_warn = "notify",        -- view for warnings
    view_history = "notify",     -- view for :messages
    view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
  },
  views = {
    hover = {
      size = {
        width = 40,
        height = 7,
      },
      focusable = true,
    },
    notify = {
      merge = true,
      render = "compact",
      stages = "fade",
      width = 10
    }
  }
})
