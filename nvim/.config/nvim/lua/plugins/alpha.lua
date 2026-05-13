return {
	"goolord/alpha-nvim", -- Start screen with ASCII art banner
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("e", "New File", "<cmd>ene<CR>"),
			dashboard.button("f", "Find File", function()
				require("telescope.builtin").find_files()
			end),
			dashboard.button("g", "Find Word", function()
				require("telescope.builtin").live_grep()
			end),
			dashboard.button("q", "Quit", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "alpha",
			callback = function()
				vim.opt_local.foldenable = false
			end,
		})
	end,
}
