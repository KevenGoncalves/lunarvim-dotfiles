lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["P"] = {
  name = "Persistance",
  r = { "<cmd>:lua require('persistence').load()<cr>", "restore" },
  l = { "<cmd>:lua require('persistence').load({ last = true })<cr>", "restore last" },
  s = { "<cmd>:lua require('persistence').stop()<cr>", "stop" }
}

lvim.builtin.which_key.mappings["a"] = {
  name = "Harpoon",
  m = { ':lua require("harpoon.mark").add_file()<cr>', "Mark file" },
  t = { ':lua require("harpoon.ui").toggle_quick_menu()<cr>', "Toggle UI" },
  n = { ':lua require("harpoon.ui").nav_next()<cr>', "Next file" },
  p = { ':lua require("harpoon.ui").nav_prev()<cr>', "Prev file" },
  ["1"] = { ':lua require("harpoon.ui").nav_file(1)<cr>', "Goto mark 1" },
  ["2"] = { ':lua require("harpoon.ui").nav_file(2)<cr>', "Goto mark 2" },
  ["3"] = { ':lua require("harpoon.ui").nav_file(3)<cr>', "Goto mark 3" },
  ["4"] = { ':lua require("harpoon.ui").nav_file(4)<cr>', "Goto mark 4" },
  ["5"] = { ':lua require("harpoon.ui").nav_file(5)<cr>', "Goto mark 5" },
  ["6"] = { ':lua require("harpoon.ui").nav_file(6)<cr>', "Goto mark 6" },
  ["7"] = { ':lua require("harpoon.ui").nav_file(7)<cr>', "Goto mark 7" },
  ["8"] = { ':lua require("harpoon.ui").nav_file(8)<cr>', "Goto mark 8" },
  ["9"] = { ':lua require("harpoon.ui").nav_file(9)<cr>', "Goto mark 9" },
}

lvim.builtin.which_key.mappings["H"] = {
  name = "Hop",
  c = { '<cmd>HopChar1<CR>', 'char' },
  l = { '<cmd>HopLine<CR>', 'line' },
  p = { '<cmd>HopPattern<CR>', 'pattern' },
  a = { '<cmd>HopAnywhere<CR>', 'anywhere' },
  v = { '<cmd>HopVertical<CR>', 'vertical' },
  w = { '<cmd>HopWord<CR>', 'word' }
}

lvim.builtin.which_key.mappings["n"] = {
  name = "Null-ls",
  i = { ':NullLsInfo<CR>', "null info" },
  e = { ':lua require("null-ls").toggle({name = "eslint_d"})<CR>', "toggle Eslint" },
  p = { ':lua require("null-ls").toggle({name = "prettier"})<CR>', "toggle Prettier" },
  m = { ':lua require("null-ls").toggle({name = "mypy"})<CR>', "toggle MyPy" },
  f = { ':lua require("null-ls").toggle({name = "flake8"})<CR>', "toggle Flake8" },
}

lvim.builtin.which_key.mappings["m"] = {
  name = "Misc",
  m = { ":lua MiniMap.toggle()<CR>", "Toggle MiniMap" },
  s = { ":SymbolsOutline<CR>", "Toggle Symbols" },
  t = { ":TroubleToggle<CR>", "Toggle Trouble" }
}
