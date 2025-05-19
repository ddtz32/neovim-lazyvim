return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        filename = {
          ["launch.json"] = "jsonc", -- vscode launch.json support comments
        },
        extension = {
          ["inc"] = "cpp",
        },
      })
    end,
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
