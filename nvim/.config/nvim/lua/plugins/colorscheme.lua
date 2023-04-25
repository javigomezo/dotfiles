return {
  'shaunsingh/nord.nvim',
  name = 'nord',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.nord_contrast = true
    vim.g.nord_borders = false
    vim.g.nord_disable_background = true
    vim.g.nord_italic = false
    vim.g.nord_uniform_diff_background = true
    vim.g.nord_bold = false
    vim.cmd([[ set t_8f=^[[38;2;%lu;%lu;%lum ]])
    vim.cmd([[ set t_8b=^[[48;2;%lu;%lu;%lum ]])
    vim.cmd([[ set termguicolors ]])
    vim.cmd([[ colorscheme nord ]])
  end,
}
