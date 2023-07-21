lvim.icons.ui.ChevronRight = ""
lvim.builtin.breadcrumbs.options.depth_limit_indicator = "󰇘"
lvim.builtin.breadcrumbs.options.separator = "  "

require 'nvim-web-devicons'.setup {
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
    go = {
      icon = "󰟓",
      color = "#27A5B4",
      cterm_color = "144",
      name = "Go"
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
    ["taskfile.yml"] = {
      icon = "󰆦",
      color = "#94DFD8",
      cterm_color = 108,
      name = "Taskfile"
    },
    ["tailwind.config.js"] = {
      icon = "󱏿",
      color = "#38BDF8",
      cterm_color = 102,
      name = "TailwindConfigJS"
    },
    ["tailwind.config.cjs"] = {
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
    ["*.env.*"] = {
      icon = "",
      color = "#e9c462",
      cterm_color = "226",
      name = "Env",
    },
    ["*.env"] = {
      icon = "",
      color = "#e9c462",
      cterm_color = "226",
      name = "Env",
    },
    [".env.*"] = {
      icon = "",
      color = "#e9c462",
      cterm_color = "226",
      name = "Env",
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
    ["go.mod"] = {
      icon = "󰟓",
      color = "#E8337A",
      cterm_color = "145",
      name = "GoMod"
    },
    ["go.sum"] = {
      icon = "󰟓",
      color = "#E8337A",
      cterm_color = "145",
      name = "GoSum"
    },
    makefile = {
      icon = "",
      color = "#F94452",
      cterm_color = 106,
      name = "Makefile"
    },
    ["cmakelists.txt"] = {
      icon = "󰔷",
      color = "#F94452",
      cterm_color = 106,
      name = "CMakeLists"
    },
  },
  color_icons = true,
  default = true,
}
