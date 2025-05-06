return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = {
        views = {
          hover = {
            border = {
              style = vim.g.user.border,
            },
          },
        },
      },
    },
  },
}
