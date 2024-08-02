local M = {}

M.base46 = {
  theme = "wombat",
}

M.ui = {
  cmp = {
    -- default/flat_light/flat_dark/atom/atom_colored
    style = "atom",
  },

  telescope = {
    -- borderless / bordered
    style = "borderless",
  },

  statusline = {
    -- default/vscode/vscode_colored/minimal
    theme = "vscode_colored",
  },

  nvdash = {
    load_on_startup = true,
    header = {
      " ██░ ██ ▓█████  ██▓     ██▓     ▒█████        █     █░ ▒█████   ██▀███   ██▓    ▓█████▄ ",
      "▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    ▒██▒  ██▒     ▓█░ █ ░█░▒██▒  ██▒▓██ ▒ ██▒▓██▒    ▒██▀ ██▌",
      "▒██▀▀██░▒███   ▒██░    ▒██░    ▒██░  ██▒     ▒█░ █ ░█ ▒██░  ██▒▓██ ░▄█ ▒▒██░    ░██   █▌",
      "░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    ▒██   ██░     ░█░ █ ░█ ▒██   ██░▒██▀▀█▄  ▒██░    ░▓█▄   ▌",
      "░▓█▒░██▓░▒████▒░██████▒░██████▒░ ████▓▒░     ░░██▒██▓ ░ ████▓▒░░██▓ ▒██▒░██████▒░▒████▓ ",
      " ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░░ ▒░▒░▒░      ░ ▓░▒ ▒  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒░▓  ░ ▒▒▓  ▒ ",
      " ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░  ░ ▒ ▒░        ▒ ░ ░    ░ ▒ ▒░   ░▒ ░ ▒░░ ░ ▒  ░ ░ ▒  ▒ ",
      " ░  ░░ ░   ░     ░ ░     ░ ░   ░ ░ ░ ▒         ░   ░  ░ ░ ░ ▒    ░░   ░   ░ ░    ░ ░  ░ ",
      " ░  ░  ░   ░  ░    ░  ░    ░  ░    ░ ░           ░        ░ ░     ░         ░  ░   ░    ",
      "                                                                                 ░      ",
    },
  },
}

M.mason = {
  cmd = true,
  pkgs = {
    "stylua",
    "lua-language-server",
  }

}

return M
