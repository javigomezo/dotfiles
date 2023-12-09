return {
  "nvim-treesitter/nvim-treesitter",
  lazy = true,
  dependencies = { "windwp/nvim-ts-autotag", "JoosepAlviste/nvim-ts-context-commentstring" },
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
