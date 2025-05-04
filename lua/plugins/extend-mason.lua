---@type LazySpec
return {
  "williamboman/mason.nvim",
  opts = {
    ui = {
      border = vim.g.user.border,
      backdrop = vim.g.user.backdrop,
      width = vim.g.user.width,
      height = vim.g.user.height,
    },
  },
}
