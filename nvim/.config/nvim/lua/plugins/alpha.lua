return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- =========================
    -- HEADER
    -- =========================

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

    -- =========================
    -- BUTTONS
    -- =========================

    dashboard.section.buttons.val = {
      dashboard.button("e", "  > New File", "<cmd>ene<CR>"),

      dashboard.button("SPC ee", "  > Toggle file explorer", function()
        require("neo-tree.command").execute({ toggle = true })
      end),

      dashboard.button("SPC ff", "󰱼 > Find File", function()
        require("telescope.builtin").find_files()
      end),

      dashboard.button("SPC fg", "  > Find Word", function()
        require("telescope.builtin").live_grep()
      end),

      dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
    }

    -- =========================
    -- SETUP
    -- =========================

    alpha.setup(dashboard.opts)

    -- Disable folding in alpha buffer
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "alpha",
      callback = function()
        vim.opt_local.foldenable = false
      end,
    })
  end,
}
