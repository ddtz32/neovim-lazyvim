return {
  {
    "stevearc/conform.nvim",
    opts = { formatters_by_ft = { cmake = { "cmakelang" } } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = { servers = { neocmake = { init_options = { lint = { enable = false } } } } },
  },
  {
    "mfussenegger/nvim-lint",
    opts = function(_, _)
      local cmake = require("lint").linters.cmakelint
      table.insert(cmake.args, "--linelength=120")
    end,
  },
}
