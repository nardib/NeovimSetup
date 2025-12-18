return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
        })
        vim.lsp.enable('lua_ls')
        vim.lsp.config("clangd", {
            capabilities = capabilities,
        })
        vim.lsp.enable('clangd')
        vim.lsp.config("pyright", {
            capabilities = capabilities,
        })
        vim.lsp.enable('pyright')
        vim.lsp.config("pyright", {
            capabilities = capabilities,
        })
        vim.lsp.enable('pyright')
        vim.lsp.config("java_language_server", {
            capabilities = capabilities,
        })
        vim.lsp.enable('java_language_server')

      vim.keymap.set("n", "F", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
