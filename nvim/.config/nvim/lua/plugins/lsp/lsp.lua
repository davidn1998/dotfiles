return {
  {
    "hrsh7th/cmp-nvim-lsp",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("*", {
        capabilities = capabilities,
      })
    end,
  },
  {
    "folke/lazydev.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
  },
  {
    "antosha417/nvim-lsp-file-operations",
    event = { "BufReadPre", "BufNewFile" },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
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
