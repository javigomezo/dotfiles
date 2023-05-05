return {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  opts = {
    mappings = {
      comment = "<leader>/",
      comment_line = "<leader>/",
    },
    hooks = {
      pre = function()
        require("ts_context_commentstring.internal").update_commentstring({})
      end,
    },
  },
  config = function(_, opts)
    require("mini.comment").setup(opts)
  end,
}
