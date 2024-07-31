local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		cpp = {"clang_format"},
    rust = {"rustfmt"},
		java = {"clang_format"},
	},
}

return options
