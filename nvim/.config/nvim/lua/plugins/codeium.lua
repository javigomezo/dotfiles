return {
  "Exafunction/codeium.vim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp"
  },
  cmd = "Codeium",
  build = ":Codeium Auth",
  opts = {},
  event = "BufEnter",
  config = function()
  end,
}
