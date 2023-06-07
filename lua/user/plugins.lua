lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "echasnovski/mini.map",
    branch = "stable",
    config = function()
      require('mini.map').setup()
      local map = require('mini.map')
      map.setup({
        integrations = {
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
    "mattn/emmet-vim"
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
    "p00f/nvim-ts-rainbow",
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
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
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
    'madox2/vim-ai'
  },
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
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
}
