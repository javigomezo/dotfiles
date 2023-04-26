return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
    { "folke/neodev.nvim", opts = { experimental = { pathStrict = true } } },
    "mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
      "hrsh7th/cmp-nvim-lsp",
    },
  },
  config = function()
    require('lspconfig').setup {
      on_attach = function(client, bufnr)
        require('lsp.on_attach')(client, bufnr)
      end,
      on_save = function(client, bufnr)
        require('lsp.on_save')(client, bufnr)
      end,

    }
  end
}
