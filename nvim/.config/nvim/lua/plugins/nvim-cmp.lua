return {
  'hrsh7th/nvim-cmp',
  lazy = true,
  event = "InsertEnter",
  dependencies = {
    'hrsh7th/cmp-emoji',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'onsails/lspkind-nvim',
  },
  config = function()
    local cmp = require('cmp')
    local lspkind = require('lspkind')
    cmp.setup {
      mapping = cmp.mapping.preset.insert({
          ["<Up>"] = cmp.mapping.select_prev_item(),
          ["<Down>"] = cmp.mapping.select_next_item(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-Esc>"] = cmp.mapping.abort(),
      }),
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
        { name = 'emoji' },
      },
      formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol', -- show only symbol annotations
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
        })
      }
    }
  end
}
