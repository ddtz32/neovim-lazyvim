return {
  "folke/noice.nvim",
  opts = {
    presets = {
      lsp_doc_border = {
        views = {
          hover = {
            size = {
              max_height = math.floor(vim.g.user.height * vim.o.lines / 2),
              max_width = math.floor(vim.g.user.width * vim.o.columns),
            },
            border = { style = vim.g.user.border },
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
