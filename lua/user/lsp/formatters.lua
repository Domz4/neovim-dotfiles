local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "stylish-haskell", filetypes = { "haskell", "hs" } },
	-- {
	-- 	command = "clang-format",
	-- 	extra_args = { "--style=", "IndentWidth: 4" },
	-- 	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
	-- },
	{
		command = "prettier",
		extra_args = { "--print-width", "100", "--tab-width", "4" },
		filetypes = { "typescript", "typescriptreact", "css", "javascript", "scss", "sass" },
	},
})

dap.configurations.scala = {
	{
		type = "scala",
		request = "launch",
		name = "Run or Test Target",
		metals = {
			runType = "runOrTestFile",
		},
	},
	{
		type = "scala",
		request = "launch",
		name = "Test Target",
		metals = {
			runType = "testTarget",
		},
	},
}
