require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = { "cmake", "jdtls", "rust_analyzer", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig["clangd"].setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  on_init = nvlsp.on_init,
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
