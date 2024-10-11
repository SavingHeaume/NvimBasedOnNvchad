local M = {
  {
    "luozhiya/fittencode.nvim",
    event = {"BufRead", "BufNewFile"},
    config = function()
      require("fittencode").setup()
    end,
  },
}

return M
