return {
  'rcarriga/nvim-notify',
  lazy = true,
  event = 'VeryLazy',
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss({ silent = true, pending = true })
      end,
      desc = "Delete all Notifications",
    },
  },
  config = function ()
    require('notify').setup {
      stages = 'slide',
      timeout = 3000,
      render = 'compact'
    }
  end
}
