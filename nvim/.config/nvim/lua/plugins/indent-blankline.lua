return {
  "lukas-reineke/indent-blankline.nvim",
  lazy = true,
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("indent_blankline").setup({
      char = "│",
    })
  end
}
