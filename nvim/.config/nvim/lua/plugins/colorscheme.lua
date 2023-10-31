return {
  "gbprod/nord.nvim",
  name = "nord",
  lazy = false,
  priority = 1000,
  config = function()
    require("nord").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      transparent = false, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      diff = { mode = "bg" }, -- enables/disables colorful backgrounds when used in diff mode. values : [bg|fg]
      borders = true, -- Enable the border between verticaly split windows visible
      errors = { mode = "bg" }, -- Display mode for errors and diagnostics
      -- values : [bg|fg|none]
      search = { theme = "vscode" }, -- theme for highlighting search results
      -- values : [vim|vscode]
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = {},
        functions = {},
        variables = {},

        -- To customize lualine/bufferline
        bufferline = {
          current = {},
          modified = { italic = true },
        },
      },

      install = {
        colorscheme = { "nord" },
      },
    })
    vim.cmd.colorscheme("nord")
    -- vim.cmd([[ set t_8f=^[[38;2;%lu;%lu;%lum ]])
    -- vim.cmd([[ set t_8b=^[[48;2;%lu;%lu;%lum ]])
    vim.cmd([[ set termguicolors ]])
  end,
}
