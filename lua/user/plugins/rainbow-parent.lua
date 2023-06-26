vim.cmd("highlight TSRainbowRed guifg=#Fc0783")
vim.cmd("highlight TSRainbowYellow guifg=#FA807E")

local rainbow = require("ts-rainbow")
require("nvim-treesitter.configs").setup({
	rainbow = {
		query = {
			"rainbow-parens",
		},
		-- html = rainbow.strategy["global"],
		tsx = rainbow.strategy["local"],
		-- javasript = rainbow.strategy["global"],
		strategy = rainbow.strategy.global,
		hlgroups = {
			"TSRainbowRed",
			"TSRainbowOrange",
			"TSRainbowYellow",
			"TSRainbowGreen",
			"TSRainbowCyan",
			"TSRainbowBlue",
			"TSRainbowViolet",
		},
	},
})
