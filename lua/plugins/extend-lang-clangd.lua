return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false,
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
            { "<leader>cH", "<cmd>ClangdTypeHierarchy<cr>", desc = "Type Hierarchy" },
          },
        },
      },
    },
  },
}
