local plugins = {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				-- defaults
				"vim",
				"lua",
				"vimdoc",

				-- low level
				"cpp",
				"c",
				"python",
				"java",
        "markdown",
        "rust",
			},
		},
	},

	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"stylua",

				"clangd",
				"clang-format",
				"cmake-language-server",
				"codelldb",

				"pyright",

				"jdtls",
        "rust-analyzer",
			},
		},
	},
}

return plugins
