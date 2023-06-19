local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "scalafmt", filetypes = { "scala" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "stylish-haskell", filetypes = { "haskell", "hs" } },
	{
		command = "prettier",
		extra_args = { "--print-width", "100", "--tab-width", "4" },
		filetypes = { "typescript", "typescriptreact", "css", "javascript", "scss", "sass" },
	},
})
