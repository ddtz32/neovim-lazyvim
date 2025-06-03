return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "tablegen" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { tblgen_lsp_server = { mason = false } } },
  },
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { tablegen = { "clang-format" } } },
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    opts = { config = { tablegen = "// %s" } },
  },
}
