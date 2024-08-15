local leet_arg = "leetcode.nvim"
local is_windows = package.config:sub(1, 1) == "\\"
local home = ""
local cache = ""

if is_windows then
  home = "D:\\Projects\\LeetCode"
  cache = "D:\\Projects\\LeetCode"
else
  home = "~/Projects/LeetCode"
  cache = "~/Projects/LeetCode"
end

local leetcode = {
  {
    "SavingHeaume/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-treesitter/nvim-treesitter",
      "rcarriga/nvim-notify",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = leet_arg ~= vim.fn.argv()[1],
    opts = {
      storage = {
        home = home,
        cache = cache,
      },
      cn = {
        enabled = true,
      },
    },
  },
}

return leetcode
