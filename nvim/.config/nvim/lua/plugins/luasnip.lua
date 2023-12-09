return {
  "L3MON4D3/LuaSnip",
  build = "make install_jsregexp",
  lazy = true,
  cmd = "LuaSnip",
  dependencies = {
    "rafamadriz/friendly-snippets",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
  keys = {
    -- Arrow key down to next snippet
    {
      "<Down>",
      function()
        require("luasnip").jump(1)
      end,
      mode = "i",
    },
    -- Arrow key up to previous snippet
    {
      "<Up>",
      function()
        require("luasnip").jump(-1)
      end,
      mode = "i",
    },
    -- Enter to accept snippet
    { "<CR>", "<Plug>luasnip-expand-or-jump" },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
}
