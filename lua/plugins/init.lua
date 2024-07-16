return {
  {
    "stevearc/conform.nvim",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPost", "BufNewFile" },
    -- opts = {
    --   separator = '·',
    -- },
  },

  {
    -- git diff view 页面
    "sindrets/diffview.nvim",
    event = "User FilePost",
  },

  {
    -- noice通知和悬浮命令行
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        hover = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    event = "User FilePost",
    "Pocco81/auto-save.nvim",
  }
}
