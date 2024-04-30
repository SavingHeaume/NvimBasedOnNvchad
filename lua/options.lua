require "nvchad.options"

local opt = vim.opt
local g = vim.g

-- opt.shiftwidth = 4
-- opt.tabstop = 4
-- opt.softtabstop = 4

opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

local is_windows = package.config:sub(1, 1) == "\\"

if is_windows then
  g["loaded_python3_provider"] = 1
  g.python3_host_prog = "D:\\Tools\\Anaconda\\envs\\torch\\python"

  opt.shell = "pwsh"
  opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
  opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  opt.shellquote = ""
  opt.shellxquote = ""
else
  opt.shell = "zsh"
end

if g.neovide then
  opt.guifont = "JetBrainsMono Nerd Font:h12"
end

-- add yours here!
