return {
  'nvim-telescope/telescope.nvim',
  lazy = true,
  cmd = "Telescope",
  dependencies = { 'nvim-lua/plenary.nvim' },
  pickers = {
    find_files = {
      hidden = true
    }
  },
  keys = {
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live grep' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find buffers' },
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Find help' },
  },
}

