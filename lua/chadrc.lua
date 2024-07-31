local M = {}

M.base46 = {
  theme = "wombat",
}

M.ui = {
  cmp = {
    -- default/flat_light/flat_dark/atom/atom_colored
    style = "atom",
  },

  nvdash = {
    load_on_startup = true,
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

return M
