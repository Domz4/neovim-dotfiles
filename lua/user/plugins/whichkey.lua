lvim.builtin.which_key.mappings["W"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
	name = "Trouble",
	q = { "<cmd>TroubleToggle quickfix<cr>", "TroubleToggle quickfix" },
	t = { "<cmd>Trouble<cr>", "Open Trouble" },
}
lvim.builtin.which_key.mappings["S"] = {
	name = "Session",
	c = { "<cmd>lua require('persistence').load()<cr>", "Restore last session for current dir" },
	l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session" },
	Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}
lvim.builtin.which_key.mappings["F"] = {
	name = "Telescope",
	f = { "<cmd>Telescope<CR>", "Telescope tools" },
	g = { "<cmd>Telescope grep_string<CR>", "Grep" },
}
