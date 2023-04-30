return {
  'folke/noice.nvim',
  lazy = true,
  event = 'VeryLazy',
  config = function()
    require('noice').setup({
        -- add any options here
    })
  end,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
    }
}
