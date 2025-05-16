return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = {
        views = {
          hover = {
            size = {
              max_height = 10,
            },
            border = {
              style = vim.g.user.border,
            },
          },
        },
      },
      command_palette = {
        views = {
          cmdline_popup = { border = { style = vim.g.user.border } },
          cmdline_popupmenu = { border = { style = vim.g.user.border } },
        },
      },
    },
  },
}
