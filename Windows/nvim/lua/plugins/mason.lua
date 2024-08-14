return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",  -- Integration with lspconfig
    "neovim/nvim-lspconfig",  -- LSP configurations
  },
  config = function()
    -- Set up mason.nvim
    require("mason").setup({
      ensure_installed = {
        'ruff',  -- Ensure Ruff is installed
      },
    })

    -- Set up mason-lspconfig
    require("mason-lspconfig").setup({
      ensure_installed = { 'ruff' },  -- Ensure Ruff is managed by lspconfig
    })

    require('lspconfig').ruff_lsp.setup{}
  end
}
