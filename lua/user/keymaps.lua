lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"
lvim.keys.normal_mode["="] = ":close<CR>"
lvim.keys.normal_mode["m"] = ":CodeActionMenu<CR>"
lvim.keys.normal_mode["M"] = ":lua vim.lsp.codelens.run()<CR>"
lvim.keys.normal_mode["<C-,>"] = ":lua require('nvim-peekup').peekup_open()<CR>"
lvim.keys.normal_mode[","] = ":HopWord<CR>"
lvim.keys.normal_mode["zR"] = ":lua require('ufo').openAllFolds()<CR>"
lvim.keys.normal_mode["zM"] = ":lua require('ufo').closeAllFolds()<CR>"
lvim.keys.normal_mode["\\"] = '%'
lvim.keys.visual_mode["\\"] = '%'
lvim.keys.normal_mode["ff"] = ":lua vim.diagnostic.open_float()<CR>"
lvim.keys.normal_mode["fj"] = ":lua vim.diagnostic.goto_next()<CR>"
lvim.keys.normal_mode["fk"] = ":lua vim.diagnostic.goto_prev()<CR>"
lvim.keys.normal_mode["fm"] = ":lua MiniMap.toggle_focus({use_previous_cursos = true})<CR>"
lvim.keys.normal_mode["<C-a>"] = "ggVG"
lvim.keys.visual_mode["<C-a>"] = "ggVG"
