return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  dependencies = { "windwp/nvim-ts-autotag", "JoosepAlviste/nvim-ts-context-commentstring" },
  --event = "User AstroFile",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      -- context_commentstring = { enable = true, enable_autocmd = false },
      ensure_installed = {
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "yaml",
      },
    })
  end,
}
