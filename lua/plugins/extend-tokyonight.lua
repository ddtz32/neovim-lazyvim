return {
  "folke/tokyonight.nvim",
  opts = {
    style = "night",
    on_colors = function(colors)
      colors.border = require("tokyonight.util").blend_bg(colors.purple, 0.5)
      vim.g.user = vim.tbl_extend("force", vim.g.user, { purple = colors.border })
    end,
  },
}
