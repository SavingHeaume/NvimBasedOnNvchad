require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

--DAP
map("n", "<F5>", function()
  require("dap").continue()
end, { desc = "继续执行（或开始调试）" })

map("n", "<F10>", function()
  require("dap").step_over()
end, { desc = "步过" })

map("n", "<F11>", function()
  require("dap").step_into()
end, { desc = "步入" })

map("n", "<F12>", function()
  require("dap").step_out()
end, { desc = "步出" })

map("n", "<Leader>b", function()
  require("dap").toggle_breakpoint()
end, { desc = "切换断点" })

map("n", "<Leader>B", function()
  require("dap").set_breakpoint()
end, { desc = "设置断点" })

map("n", "<Leader>lp", function()
  require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
end, { desc = "设置日志点" })

map("n", "<Leader>dr", function()
  require("dap").repl.open()
end, { desc = "打开 REPL" })

map("n", "<Leader>dl", function()
  require("dap").run_last()
end, { desc = "运行最后一次调试配置" })

-- menu
vim.keymap.set("n", "<C-t>", function()
  require("menu").open "default"
end, {})

vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})
