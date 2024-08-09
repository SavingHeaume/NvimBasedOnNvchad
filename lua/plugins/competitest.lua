local M = {
  {
    "xeluxee/competitest.nvim",
    cmd = "CompetiTest",
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
        template_file = {
          cpp = vim.fn.stdpath "config" .. "/lua/plugins/template/competitest.cpp",
        },
        evaluate_template_modifiers = true,
      }
    end,
  },
}

return M
