return {
  'rcarriga/nvim-notify',
  config = function ()
    require('notify').setup {
      stages = 'slide',
      timeout = 3000,
      render = 'compact'
    }
  end
}
