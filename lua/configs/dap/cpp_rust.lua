local M = {}

function M.setup()
  local dap = require "dap"
  local dapui = require "dapui"

  -- 配置DAP
  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      command = vim.fn.stdpath "data" .. "/mason/bin/codelldb",
      args = { "--port", "${port}" },
    },
  }

  -- 配置DAP-UI
  dapui.setup()

  -- 配置DAP事件监听器以自动打开和关闭DAP-UI
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  -- 为C/C++配置启动配置
  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }
  dap.configurations.c = dap.configurations.cpp
  dap.configurations.rust = dap.configurations.cpp
end

return M
