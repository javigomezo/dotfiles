return {
  'folke/noice.nvim',
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
