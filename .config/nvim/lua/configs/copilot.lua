require("copilot").setup({
	panel = {
		enabled = true,
		auto_refresh = true,
		keymap = {
			jump_prev = "[[",
			jump_next = "]]",
			accept = "<CR>",
			refresh = "gr",
			open = "<M-CR>",
		},
		layout = {
			position = "right",
			ratio = 0.4,
		},
	},
	suggestion = {
		enabled = true,
		auto_trigger = true,
		debounce = 75,
		keymap = {
			accept = "<C-l>",
			accept_word = "<C-{>",
			accept_line = "<C-}>",
			next = "<C-k>",
			prev = "<C-j>",
			dismiss = "<C-h>",
		},
	},
	filetypes = {
		yaml = true,
		markdown = true,
		help = false,
		gitcommit = false,
		gitrebase = false,
		hgcommit = false,
		svn = false,
		cvs = false,
		["."] = false,
	},
	server_opts_overrides = {
		enabled = false,
	},
	copilot_node_command = "node",
})
