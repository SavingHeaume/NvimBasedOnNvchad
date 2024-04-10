local map = vim.keymap.set

local M = {
  {
    "xeluxee/competitest.nvim",
    --lazy = false,
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("competitest").setup {
        runner_ui = {
          interface = "split",
        },
      }
    end,
  },
}

return M
