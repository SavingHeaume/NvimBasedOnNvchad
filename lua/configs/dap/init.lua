local M = {}

local function virtual_rext()
  require("nvim-dap-virtual-text").setup {
    enabled = true, -- 启用插件
    enabled_commands = true, -- 创建命令 DapVirtualTextEnable, DapVirtualTextDisable, DapVirtualTextToggle
    highlight_changed_variables = true, -- 高亮改变的变量
    highlight_new_as_changed = false, -- 将新变量视为已更改
    show_stop_reason = true, -- 显示停止原因
    commented = false, -- 将虚拟文本前缀为注释字符
    only_first_definition = true, -- 仅显示引用的第一个定义
    all_references = false, -- 显示所有引用
    filter_references_pattern = "<module", -- 引用过滤器模式
    -- 虚拟文本前缀
    virt_text_pos = "eol", -- 虚拟文本的位置，可以是 'eol' 或 'overlay'
    all_frames = false, -- 显示所有堆栈帧的虚拟文本
    virt_lines = false, -- 显示虚拟行而不是虚拟文本
    virt_text_win_col = nil, -- 在固定列中显示虚拟文本
  }
end

local function configure()
  local dap_breakpoint = {
    breakpoint = {
      text = "",
      texthl = "LspDiagnosticsSignError",
      linehl = "",
      numhl = "",
    },
    rejected = {
      text = "",
      texthl = "LspDiagnosticsSignHint",
      linehl = "",
      numhl = "",
    },
    stopped = {
      text = "",
      texthl = "LspDiagnosticsSignInformation",
      linehl = "DiagnosticUnderlineInfo",
      numhl = "LspDiagnosticsSignInformation",
    },
  }

  vim.fn.sign_define("DapBreakpoint", dap_breakpoint.breakpoint)
  vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
  vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

function M.setup()
  configure()
  virtual_rext()
  require("configs.dap.cpp_rust").setup()
end

return M
