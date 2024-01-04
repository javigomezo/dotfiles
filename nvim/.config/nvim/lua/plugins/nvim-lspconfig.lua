return {
  "neovim/nvim-lspconfig",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
    { "folke/neodev.nvim", opts = { experimental = { pathStrict = true } } },
    "mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require("lspconfig").lua_ls.setup({
      diagnostics = {
        underline = true,
        update_in_insert = true,
        virtual_text = {
          spacing = 8,
          source = "if_many",
          prefix = "●",
          -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
          -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
          -- prefix = "icons",
        },
        severity_sort = true,
      },
      servers = {
        sumneko_lua = {},
      },
      autoformat = true,
      format = {
        formatting_options = nil,
        timeout_ms = nil,
      },
    })

    require("lspconfig").tailwindcss.setup({})
    require("lspconfig").astro.setup({})
    require("lspconfig").pyright.setup({})
  end,
}
