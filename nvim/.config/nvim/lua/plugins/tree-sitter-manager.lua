return {
	{
		"romus204/tree-sitter-manager.nvim", -- Auto-install treesitter parsers
		opts = {
			ensure_installed = {
				"lua",
				"vim",
				"vimdoc",
				"bash",
				"javascript",
				"typescript",
				"python",
				"json",
				"html",
				"css",
			},
			auto_install = true,
		},
	},
}
