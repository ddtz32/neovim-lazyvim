return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false,
          keys = {
            { "<leader>cH", "<cmd>ClangdTypeHierarchy<cr>", desc = "Type Hierarchy" },
          },
        },
      },
    },
  },
}
