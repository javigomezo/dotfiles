return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
    require('dashboard').setup {
      theme = 'hyper'
    }
  end,
}
