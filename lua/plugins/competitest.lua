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
        testcase_use_single_file = true,
      }
    end,
  },
}

return M
