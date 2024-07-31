local M = {
  {
    -- auto-save自动保存
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    -- event = "User FilePost",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      execution_message = {
        enabled = false,
      },
    },
  },
}

return M
