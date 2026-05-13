return {
	{
		"kevinhwang91/nvim-ufo", -- Code folding with ufo
		dependencies = { "kevinhwang91/promise-async" },
		opts = {
			provider_selector = function(_, _, _)
				return { "treesitter", "indent" }
			end,
		},
	},
}
