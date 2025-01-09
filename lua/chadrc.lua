-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
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
}

M.nvdash = {
  load_on_startup = true,
  -- header = {
  --   "                                                                     ",
  --   "       ████ ██████           █████      ██                     ",
  --   "      ███████████             █████                             ",
  --   "      █████████ ███████████████████ ███   ███████████   ",
  --   "     █████████  ███    █████████████ █████ ██████████████   ",
  --   "    █████████ ██████████ █████████ █████ █████ ████ █████   ",
  --   "  ███████████ ███    ███ █████████ █████ █████ ████ █████  ",
  --   " ██████  █████████████████████ ████ █████ █████ ████ ██████ ",
  --   "                                                                       ",
  -- },
  --    header = {
  --      " ██░ ██ ▓█████  ██▓     ██▓     ▒█████        █     █░ ▒█████   ██▀███   ██▓    ▓█████▄ ",
  --      "▓██░ ██▒▓█   ▀ ▓██▒    ▓██▒    ▒██▒  ██▒     ▓█░ █ ░█░▒██▒  ██▒▓██ ▒ ██▒▓██▒    ▒██▀ ██▌",
  --      "▒██▀▀██░▒███   ▒██░    ▒██░    ▒██░  ██▒     ▒█░ █ ░█ ▒██░  ██▒▓██ ░▄█ ▒▒██░    ░██   █▌",
  --      "░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██░    ▒██   ██░     ░█░ █ ░█ ▒██   ██░▒██▀▀█▄  ▒██░    ░▓█▄   ▌",
  --      "░▓█▒░██▓░▒████▒░██████▒░██████▒░ ████▓▒░     ░░██▒██▓ ░ ████▓▒░░██▓ ▒██▒░██████▒░▒████▓ ",
  --      " ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░░ ▒░▓  ░░ ▒░▒░▒░      ░ ▓░▒ ▒  ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░░ ▒░▓  ░ ▒▒▓  ▒ ",
  --      " ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░ ░ ▒  ░  ░ ▒ ▒░        ▒ ░ ░    ░ ▒ ▒░   ░▒ ░ ▒░░ ░ ▒  ░ ░ ▒  ▒ ",
  --      " ░  ░░ ░   ░     ░ ░     ░ ░   ░ ░ ░ ▒         ░   ░  ░ ░ ░ ▒    ░░   ░   ░ ░    ░ ░  ░ ",
  --      " ░  ░  ░   ░  ░    ░  ░    ░  ░    ░ ░           ░        ░ ░     ░         ░  ░   ░    ",
  --      "                                                                                 ░      ",
  --    },
}

M.mason = {
  pkgs = {
    "stylua",
    "lua-language-server",
    "clangd",
    "clang-format",
    "cmake-language-server",
    "codelldb",

    "pyright",
    "autopep8",

    "jdtls",
    "rust-analyzer",
  },
}

return M
