lvim.plugins = {
  { "catppuccin/nvim",  name = "catppuccin", priority = 1000 },
  {
    "echasnovski/mini.map",
    branch = "stable",
    config = function()
      require('mini.map').setup()
      local map = require('mini.map')
      map.setup({
        integrations = {
          map.gen_integration.gitsigns(),
          map.gen_integration.builtin_search(),
          map.gen_integration.diagnostic({
            error = 'DiagnosticFloatingError',
            warn  = 'DiagnosticFloatingWarn',
            info  = 'DiagnosticFloatingInfo',
            hint  = 'DiagnosticFloatingHint',
          }),
        },
        symbols = {
          encode = map.gen_encode_symbols.dot('4x2'),
        },
        window = {
          focusable = true,
          side = 'right',
          width = 10,
          winblend = 15,
          show_integration_count = false
        },
      })
    end
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["-"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "NvChad/nvim-colorizer.lua",
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup {
        width = 120,
        height = 25,
        default_mappings = true,
        debug = false,
        opacity = nil,
        post_open_hook = nil
      }
    end
  },
  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    config = function()
      require("nvim-surround").setup {}
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end
  },
  {
    "folke/noice.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "gennaro-tedesco/nvim-peekup"
  },
  {
    "sitiom/nvim-numbertoggle"
  },
  {
    'nacro90/numb.nvim',
    config = function()
      require('numb').setup()
    end
  },
  {
    'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async'
  },
  {
    'yaocccc/nvim-foldsign',
    event = 'CursorHold',
    config = function()
      require("nvim-foldsign").setup({
        foldsigns = {
          open = '󰅀',
          close = '󰅂',
          seps = { '', '' },
        }
      })
    end
  },
  {
    "jose-elias-alvarez/typescript.nvim",
    config = function()
      require("typescript").setup {}
    end
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    lazy = false,
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  {
    'ThePrimeagen/harpoon'
  },
  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  {
    "HiPhish/nvim-ts-rainbow2",
  },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup()
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  },
  {
    '0x00-ketsu/markdown-preview.nvim',
    ft = { 'md', 'markdown', 'mkd', 'mkdn', 'mdwn', 'mdown', 'mdtxt', 'mdtext', 'rmd', 'wiki' },
    config = function()
      require('markdown-preview').setup {}
    end
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      { 'tpope/vim-dadbod',                     lazy = true },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
  {
    'nvim-telescope/telescope-media-files.nvim'
  },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require('go').setup({
        lsp_codelens = true,
        lsp_keymaps = false
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()'
  },
  {
    'mikesmithgh/kitty-scrollback.nvim',
    enabled = true,
    lazy = true,
    cmd = { 'KittyScrollbackGenerateKittens', 'KittyScrollbackCheckHealth' },
    event = { 'User KittyScrollbackLaunch' },
    config = function()
      require('kitty-scrollback').setup()
    end,
  },
  {
    "ecthelionvi/NeoComposer.nvim",
    dependencies = { "kkharji/sqlite.lua" },
    opts = {}
  }, -- Packer
  {
    "folke/paint.nvim",
    config = function()
      require("paint").setup({
        ---@diagnostic disable-next-line: undefined-doc-name
        ---@type PaintHighlight[]
        highlights = {
          {
            filter = { filetype = "go" },
            pattern = "(@%w*%.?%w*)",
            hl = "Constant",
          },
          {
            filter = { filetype = "go" },
            pattern = "(json)",
            hl = "Constant",
          },
          {
            filter = { filetype = "go" },
            pattern = "(bson)",
            hl = "Constant",
          },
          {
            filter = { filetype = "go" },
            pattern = "(yaml)",
            hl = "Constant",
          },
          {
            filter = { filetype = "go" },
            pattern = "(toml)",
            hl = "Constant",
          },
          {
            filter = { filetype = "go" },
            pattern = "(mapstructure)",
            hl = "Constant",
          },
          {
            filter = { filetype = "go" },
            pattern = "(validate)",
            hl = "Constant",
          },
          {
            filter = { filetype = "typescript" },
            pattern = "(@%w*%.?%w*)",
            hl = "Constant",
          },
          {
            filter = { filetype = "javascript" },
            pattern = "(@%w*%.?%w*)",
            hl = "Constant",
          },
        },
      })
    end,
  },
  { 'nanotee/sqls.nvim' },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          auto_refresh = false,
          enabled = false
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 25,
        },
      })
    end,
  },
  {
    'saecki/crates.nvim',
    event = { "BufRead Cargo.toml" },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crates').setup()
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local status_ok, rust_tools = pcall(require, "rust-tools")
      if not status_ok then
        return
      end

      local opts = {
        tools = {
          executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
          reload_workspace_from_cargo_toml = true,
          inlay_hints = {
            auto = true,
            only_current_line = false,
            show_parameter_hints = true,
            parameter_hints_prefix = "<-",
            other_hints_prefix = "=>",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
          },
        },
        server = {
          on_attach = require("lvim.lsp").common_on_attach,
          on_init = require("lvim.lsp").common_on_init,
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = {
                command = "clippy"
              },
              cargo = {
                allFeatures = true,
              }
            }
          },
        },
      }
      rust_tools.setup(opts)
    end,
    ft = { "rust", "rs" },
  },
  {
    'stevearc/dressing.nvim',
    opts = {
      input = {
        enabled = false
      }
    },
  },
  {
    "aznhe21/actions-preview.nvim",
    config = function()
      vim.keymap.set({ "v", "n" }, "m", require("actions-preview").code_actions)
    end,
  },
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      'smoka7/hydra.nvim',
    },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>m',
        '<cmd>MCstart<cr>',
        desc = 'Create a selection for selected text or word under the cursor',
      },
    },
  },
  { 'nanotee/zoxide.vim' },
  { 'nvim-telescope/telescope.nvim' },
  { 'jvgrootveld/telescope-zoxide' },
}
