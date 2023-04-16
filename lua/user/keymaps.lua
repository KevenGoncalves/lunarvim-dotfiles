lvim.leader = "space"
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
lvim.keys.normal_mode[","] = ":lua require('nvim-peekup').peekup_open()<CR>"
lvim.keys.normal_mode["zR"] = ":lua require('ufo').openAllFolds()<CR>"
lvim.keys.normal_mode["zM"] = ":lua require('ufo').closeAllFolds()<CR>"
-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
