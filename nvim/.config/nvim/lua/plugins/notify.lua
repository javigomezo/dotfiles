return {
  'rcarriga/nvim-notify',
  event = 'VeryLazy',
  config = function ()
    require('notify').setup {
      stages = 'slide',
      timeout = 3000,
      render = 'compact'
    }
  end
}
