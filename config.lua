--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]
-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.scrolloff = 8    -- is one of my fav
vim.opt.spell = false
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.foldmethod = "expr"
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.undofile = true           -- enable persistent undo
vim.fn.setenv("FIG_TERM", nil)
-- vim.opt.foldmethod = "syntax"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.{ts,tsx,js,jsx,lua,html,css,scss,md,json,yaml,yml,prisma,astro,svelte}",
  timeout = 1000,
}
lvim.colorscheme = "catppuccin-mocha"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
lvim.keys.normal_mode["="] = ":close<CR>"
lvim.keys.normal_mode["<S-t>"] = ":SymbolsOutline<CR>"
lvim.keys.normal_mode["<S-y>"] = ":TroubleToggle<CR>"
lvim.keys.normal_mode["m"] = ":CodeActionMenu<CR>"
lvim.keys.normal_mode["M"] = ":lua MiniMap.toggle()<CR>"
lvim.keys.normal_mode["<C-;>"] = ":noh <CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

-- -- Change theme settings
-- lvim.colorscheme = "lunar"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.dap.active = true


-- no need to set style = "lvim"
-- local components = require("lvim.core.lualine.components")


-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- indentlines
lvim.builtin.indentlines.options.use_treesitter = true
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.indentlines.options.show_trailing_blankline_indent = true

-- lualine
lvim.builtin.lualine.sections.lualine_a = { { "mode", icons_enabled = true, icon = "" } }
lvim.builtin.lualine.sections.lualine_b = { { "branch", icon = "" }, "diffs" }
lvim.builtin.lualine.sections.lualine_x = { "diagnostics", { "filetype" } }
lvim.builtin.lualine.sections.lualine_y = { { "location", icons_enabled = true, icon = "" } }
lvim.builtin.lualine.sections.lualine_z = { { "progress", icons_enabled = true, icon = "" } }
lvim.builtin.lualine.options.component_separators = { left = '', right = '' }
lvim.builtin.lualine.options.section_separators = { left = '', right = '' }
lvim.builtin.lualine.options.icons_enabled = true
lvim.builtin.lualine.options.ignore_focus = { "NvimTree", "alpha", "toggleterm", "packer" }
lvim.builtin.lualine.options.theme = "catppuccin"
--bufferline
lvim.builtin.bufferline.options.offsets = {
  {
    filetype = "NvimTree",
    text = function()
      local function mysplit(inputstr, sep)
        if sep == nil then
          sep = "%s"
        end
        local t = {}
        for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
          table.insert(t, str)
        end
        return t
      end

      local mytable = mysplit(vim.fn.getcwd(), "/")

      local function tablelength(T)
        local count = 0
        for _ in pairs(T) do count = count + 1 end
        return count
      end

      return mytable[tablelength(mytable)]
    end,
    highlight = "Directory",
    separator = true
  } }
lvim.builtin.bufferline.highlights =
    require("catppuccin.groups.integrations.bufferline").get()
-- lvim.builtin.bufferline.options.separator_style = { "", "" }
-- lvim.builtin.bufferline.options.indicator = { style = "underline" }


-- icons and breadcrumbs
lvim.icons.ui.ChevronRight = ""
lvim.builtin.breadcrumbs.options.depth_limit_indicator = "󰇘"
lvim.builtin.breadcrumbs.options.separator = "  "
-- lvim.builtin.breadcrumbs.winbar_filetype_exclude[25] = "MiniMap"

--treesitter
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.nvimtree.setup.renderer.indent_markers.enable = true
lvim.builtin.nvimtree.setup.diagnostics.show_on_dirs = true
lvim.builtin.nvimtree.setup.view.hide_root_folder = true
lvim.builtin.treesitter.highlight.enable = true


-- dashboard
lvim.builtin.alpha.dashboard.section.footer.val = {}

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact", "html", "css", "scss", "svelte",
      "astro" }
  },
  { command = "markdownlint", filetypes = { "markdown" } },
  { command = "yamlfmt",      filetypes = { "yaml" } }
  --   { command = "black", filetypes = { "python" } },
  --   { command = "isort", filetypes = { "python" } },
  --   {
  --     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --     command = "prettier",
  --     ---@usage arguments to pass to the formatter
  --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --     extra_args = { "--print-with", "100" },
  --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  --     filetypes = { "typescript", "typescriptreact" },
  --   },
}
-- -- set additional linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "markdownlint", filetypes = { "markdown" } },
  {
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "html" },
  },
  { command = "gitlint",      filetypes = { "git" } },
  { command = "jsonlint",     filetypes = { "json" } },
  { command = "yamllint",     filetypes = { "yaml" } }
  --   { command = "flake8", filetypes = { "python" } },
  --   {
  --     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
  --     command = "shellcheck",
  --     ---@usage arguments to pass to the formatter
  --     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
  --     extra_args = { "--severity", "warning" },
  --   },
  --   {
  --     command = "codespell",
  --     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  --     filetypes = { "javascript", "python" },
  --   },
}



-- Additional Plugins
lvim.plugins = {
  { "catppuccin/nvim", as = "catppuccin" },
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
          width = 10, -- set to 1 for a pure scrollbar :)
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
  }, {
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
        width = 120,             -- Width of the floating window
        height = 25,             -- Height of the floating window
        default_mappings = true, -- Bind default mappings
        debug = false,           -- Print debug information
        opacity = nil,           -- 0-100 opacity level of the floating window where 100 is fully transparent.
        post_open_hook = nil     -- A function taking two arguments, a buffer and a window to be ran as a hook.
        -- You can use "default_mappings = true" setup option
        -- Or explicitly set keybindings
        -- vim.cmd("nnoremap gpd <cmd>lua require('goto-preview').goto_preview_definition()<CR>")
        -- vim.cmd("nnoremap gpi <cmd>lua require('goto-preview').goto_preview_implementation()<CR>")
        -- vim.cmd("nnoremap gP <cmd>lua require('goto-preview').close_all_win()<CR>")
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
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    setup = function()
      vim.o.timeoutlen = 1000
    end
  },
  {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  },
  {
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
        -- add any options here
      })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}


vim.g.code_action_menu_show_details = false
vim.g.code_action_menu_show_diff = false
vim.g.code_action_menu_show_action_kind = true


lvim.autocommands = {
  {
    { "BufEnter", "Filetype" },
    {
      desc = "Open mini.map and exclude some filetypes",
      pattern = { "*" },
      callback = function()
        local exclude_ft = {
          "qf",
          "NvimTree",
          "toggleterm",
          "TelescopePrompt",
          "alpha",
          "netrw",
        }

        local map = require('mini.map')
        if vim.tbl_contains(exclude_ft, vim.o.filetype) then
          vim.b.minimap_disable = true
          map.close()
        elseif vim.o.buftype == "" then
          map.open()
        end
      end,
    },
  },
}



lvim.builtin.treesitter.rainbow.enable = true

require("colorizer").setup {
  filetypes = { "css", "scss", "html", "javascript", "typescript", "typescriptreact",
    "javascriptreact", "svelte", "astro" },
  user_default_options = {
    RGB = true,          -- #RGB hex codes
    RRGGBB = true,       -- #RRGGBB hex codes
    names = true,        -- "Name" codes like Blue or blue
    RRGGBBAA = true,     -- #RRGGBBAA hex codes
    AARRGGBB = true,     -- 0xAARRGGBB hex codes
    rgb_fn = true,       -- CSS rgb() and rgba() functions
    hsl_fn = true,       -- CSS hsl() and hsla() functions
    css = true,          -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
    css_fn = true,       -- Enable all CSS *functions*: rgb_fn, hsl_fn
    -- Available modes for `mode`: foreground, background,  virtualtext
    mode = "background", -- Set the display mode.
    -- Available methods are false / true / "normal" / "lsp" / "both"
    -- True is same as normal
    tailwind = true,                                 -- Enable tailwind colors
    -- parsers can contain values used in |user_default_options|
    sass = { enable = false, parsers = { "css" }, }, -- Enable sass colors
    virtualtext = "■",
    -- update color values even if buffer is not focused
    -- example use: cmp_menu, cmp_docs
    always_update = false
  },
  -- all the sub-options of filetypes apply to buftypes
  buftypes = {},
}
-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
--
require 'nvim-web-devicons'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    },
    js = {
      icon = "󰌞",
      color = "#e9c462",
      cterm_color = "103",
      name = "Js"
    },
    ts = {
      icon = "󰛦",
      color = "#65bad6",
      cterm_color = "104",
      name = "Ts",
    },
    astro = {
      icon = "󱓞",
      color = "#F25306",
      cterm_color = "105",
      name = "Astro"
    },
    [".gitignore"] = {
      icon = "",
      color = "#e84d31",
      cterm_color = "59",
      name = "GitIgnore",
    },
    [".eslintrc.json"] = {
      icon = "󰱺",
      color = "#4A31C3",
      cterm_color = 100,
      name = "EslintRC"
    },
    ["pnpm-lock.yaml"] = {
      icon = "",
      color = "#F1A800",
      cterm_color = 101,
      name = "PnpmLockYaml"
    },
    ["tailwind.config.js"] = {
      icon = "󱏿",
      color = "#38BDF8",
      cterm_color = 102,
      name = "TailwindConfigJS"
    },
    [".eslintrc.js"] = {
      icon = "󰱺",
      color = "#4A31C3",
      cterm_color = 100,
      name = "EslintRC"
    },
    ["tsconfig.json"] = {
      icon = "",
      color = "#65bad6",
      cterm_color = 105,
      name = "TSConfig"
    },
    [".env"] = {
      icon = "",
      color = "#e9c462",
      cterm_color = "226",
      name = "Env",
    },
    ["Dockerfile"] = {
      icon = "󰡨",
      color = "#2497ED",
      cterm_color = "59",
      name = "Dockerfile",
    },
    [".dockerignore"] = {
      icon = "󰡨",
      color = "#2497ED",
      cterm_color = "59",
      name = "Dockerfile",
    },
  },
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true,
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
}



require("indent_blankline").setup {
  -- space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  char = "▏",
  -- char_highlight_list = {
  --   "IndentBlanklineIndent1",
  --   "IndentBlanklineIndent2",
  --   "IndentBlanklineIndent3",
  --   "IndentBlanklineIndent4",
  --   "IndentBlanklineIndent5",
  --   "IndentBlanklineIndent6",
  -- },
}

require("noice").setup({
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
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = false,        -- use a classic bottom cmdline for search
    command_palette = true,       -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false,           -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = true,        -- add a border to hover docs and signature help
  },
  messages = {
    enabled = false,             -- enables the Noice messages UI
    view = false,                -- default view for messages
    view_error = "notify",       -- view for errors
    view_warn = "notify",        -- view for warnings
    view_history = "notify",     -- view for :messages
    view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
  },
})


require("catppuccin").setup({
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  integrations = {
    notify = true,
    mini = true,
    noice = true,
    navic = {
      enabled = true,
      custom_bg = "NONE"
    },
    indent_blankline = {
      enabled = true,
      colored_indent_levels = false,
    },
    dap = {
      enabled = true,
      enable_ui = true, -- enable nvim-dap-ui
    }
  }
})

require("nvim-navic").setup {
  highlight = true
}


local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    exe = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "astro", "svelte" },
  },
}
