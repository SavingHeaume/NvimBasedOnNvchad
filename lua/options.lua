require "nvchad.options"

local opt = vim.opt
local o = vim.o
local g = vim.g

o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2

local is_windows = package.config:sub(1, 1) == "\\"

if is_windows then
  -- opt.shell = "nu"
  -- opt.shellcmdflag = "-c"
  -- opt.shellquote = ""
  -- opt.shellxquote = ""
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
  g.neovide_remember_window_size = true
end
