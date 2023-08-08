lvim.plugins = {
	{ "folke/lsp-colors.nvim" },
	{ "folke/trouble.nvim" },
	{ "tjdevries/colorbuddy.vim" },
	{ "bkegley/gloombuddy" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "lewis6991/gitsigns.nvim" },
	{ "Abstract-IDE/Abstract-cs" },
	{ "Mofiqul/dracula.nvim" },
	{ "SirVer/ultisnips" },
	{ "mlaursen/vim-react-snippets" },
	{ "davidosomething/format-ts-errors.nvim" },
	{ "ThePrimeagen/harpoon" },
	{ "HiPhish/nvim-ts-rainbow2" },
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"ray-x/aurora",
		config = function()
			vim.g.aurora_transparent = 1
		end,
	},
	{
		"folke/lsp-colors.nvim",
		event = "BufRead",
	},
	{
		"sindrets/diffview.nvim",
		event = "BufRead",
	},
	{
		"tpope/vim-fugitive",
		cmd = {
			"G",
			"Git",
			"Gdiffsplit",
			"Gread",
			"Gwrite",
			"Ggrep",
			"GMove",
			"GDelete",
			"GBrowse",
			"GRemove",
			"GRename",
			"Glgrep",
			"Gedit",
		},
		ft = { "fugitive" },
	},
	{
		"folke/persistence.nvim",
		event = "BufReadPre",
		config = function()
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
				options = { "buffers", "curdir", "tabpages", "winsize" },
			})
		end,
	},
	{
		"aca/emmet-ls",
	},
	{
		"scalameta/nvim-metals",
		config = function()
			require("user.languages.scala").config()
		end,
	},
}
