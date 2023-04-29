return {
  "williamboman/mason.nvim",
  cmd = {"Mason", "MasonInstall"},
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  build = ":MasonUpdate",
  config = function()
    require("mason").setup {
      ensure_installed = {
        "lua-language-server",
        "flake8",
        "black",
        "eslint_d"
      },
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    }
  end
}
