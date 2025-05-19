---@type LazySpec
return {
  "neovim/nvim-lspconfig",
  ---@module "lspconfig"
  ---@type PluginLspOpts|{}
  opts = {
    ---@type vim.diagnostic.Opts|{}
    diagnostics = {
      float = {
        border = vim.g.user.border,
      },
    },
  },
}
