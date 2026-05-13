return {
	{
		"hrsh7th/cmp-nvim-lsp", -- LSP capabilities for nvim-cmp
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})
		end,
	},
	{
		"folke/lazydev.nvim", -- Lua type checking for .lua files
		event = { "BufReadPre", "BufNewFile" },
		opts = {},
	},
	{
		"antosha417/nvim-lsp-file-operations", -- File rename/delete for LSP
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
	{
		"neovim/nvim-lspconfig", -- Generic LSP server configuration
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						runtime = {
							version = "LuaJIT",
						},
						diagnostics = {
							globals = { "vim", "require" },
						},
						workspace = {
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})
		end,
	},
}
