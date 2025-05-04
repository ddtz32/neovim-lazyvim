---@type LazySpec
return {
  "saghen/blink.cmp",
  ---@module "blink.cmp"
  ---@type blink.cmp.Config
  opts = {
    completion = {
      menu = { border = vim.g.user.border },
      documentation = { window = { border = vim.g.user.border } },
    },
    signature = { window = { border = vim.g.user.border } },
  },
}
