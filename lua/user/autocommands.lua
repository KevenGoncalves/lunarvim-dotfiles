lvim.autocommands = {
  {
    { "bufenter", "filetype" },
    {
      desc = "open mini.map and exclude some filetypes",
      pattern = { "*" },
      callback = function()
        local exclude_ft = {
          "qf",
          "nvimtree",
          "toggleterm",
          "telescopeprompt",
          "alpha",
          "netrw",
          "trouble",
          "peek",
          "vim"
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
