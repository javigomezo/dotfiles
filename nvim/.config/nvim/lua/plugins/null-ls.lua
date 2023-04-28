return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("null-ls").setup{
      sources = {
        -- Linting
        -- Python Linting
        require("null-ls").builtins.diagnostics.flake8,
        -- Formatting 
        -- Python Formatting
        require("null-ls").builtins.formatting.black,
        -- JS Formatting
        require("null-ls").builtins.formatting.prettierd,
      }
    }
  end,
}
