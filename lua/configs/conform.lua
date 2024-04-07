local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		cpp = {"clang_format"},
		--java = {"google-java-format"},
		java = {"clang_format"},
	},
}

require("conform").setup(options)
