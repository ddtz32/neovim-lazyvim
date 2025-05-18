return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = "folke/tokyonight.nvim",
  opts = function(_, opts)
    opts.min_window_height = 20

    vim.cmd("hi clear TreesitterContext")
    vim.cmd("hi TreesitterContext gui=bold")

    assert(vim.g.user.purple)
    vim.cmd("hi TreesitterContextBottom gui=underline guisp=" .. vim.g.user.purple)
    vim.cmd("hi TreesitterContextLineNumberBottom gui=NONE")
  end,
}
