---@type LazySpec
return {
  "neovim/nvim-lspconfig",
  init = function()
    vim.filetype.add({
      filename = {
        ["launch.json"] = "jsonc",
      },
    })
  end,
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
