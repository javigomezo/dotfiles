return {
  "jose-elias-alvarez/null-ls.nvim",
  lazy = true,
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    require("null-ls").setup{
      sources = {
        -- Linting
        -- Python Linting
        require("null-ls").builtins.diagnostics.flake8,
        -- JavaScript Linting
        require("null-ls").builtins.diagnostics.eslint_d,
        -- Formatting 
        -- Python Formatting
        require("null-ls").builtins.formatting.isort,
        require("null-ls").builtins.formatting.black,
        -- JS Formatting
        require("null-ls").builtins.formatting.prettierd,
      },
      -- Autoformat
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                  vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
      end
    }

  end,
}
