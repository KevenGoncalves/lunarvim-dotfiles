lvim.builtin.bufferline.options.offsets = { {
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

    return string.upper(mytable[tablelength(mytable)])
  end,
  highlight = "Directory",
  separator = true,
  text_align = "left"
} }
lvim.builtin.bufferline.highlights = require("catppuccin.groups.integrations.bufferline").get()
lvim.builtin.bufferline.options.separator_style = "slant"
lvim.builtin.bufferline.options.always_show_bufferline = true
