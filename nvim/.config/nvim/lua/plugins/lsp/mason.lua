return {
	{
		"mason-org/mason-lspconfig.nvim", -- Manage LSP server installation
		opts = {
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"vue_ls",
				"lua_ls",
				"eslint",
				"emmet_ls",
			},
		},
		dependencies = {
			{
				"mason-org/mason.nvim", -- Install and manage LSP tools
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			"neovim/nvim-lspconfig",
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim", -- Auto-install formatters/linters
		opts = {
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d",
			},
		},
		dependencies = {
			"mason-org/mason.nvim",
		},
	},
}
