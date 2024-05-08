local configs = require "nvchad.configs.lspconfig"

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

lspconfig["clangd"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
  cmd = {
    "clangd",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--fallback-style=Google",
    "--clang-tidy",
    --"--background-index",
    --"--compile-commands-dir=./build/",
  },
}

lspconfig["cmake"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_attach,
}

lspconfig["jdtls"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
}

lspconfig["rust_analyzer"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
}

lspconfig["pyright"].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  on_init = on_init,
}

-- local is_windows = package.config:sub(1, 1) == "\\"
-- 
-- if is_windows then
-- end
