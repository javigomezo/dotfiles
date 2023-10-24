return {
  "williamboman/mason.nvim",
  lazy = true,
  cmd = { "Mason", "MasonInstall" },
  keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  build = ":MasonUpdate",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "flake8",
      "black",
      "isort",
      "eslint_d",
      "prettier",
    },
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
  config = function(_, opts)
    require("mason").setup(opts)
    local mr = require("mason-registry")
    local function ensure_installed()
      for _, tool in ipairs(opts.ensure_installed) do
        local p = mr.get_package(tool)
        if not p:is_installed() then
          p:install()
        end
      end
    end
    if mr.refresh then
      mr.refresh(ensure_installed)
    else
      ensure_installed()
    end
  end,
}
