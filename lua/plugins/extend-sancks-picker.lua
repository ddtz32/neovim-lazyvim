return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>sg", false },

    {
      "<leader>sg",
      function() LazyVim.pick("grep", { cwd = vim.fn.expand("%:p:h") })() end,
      desc = "Grep (Directory of Current File)",
    },
  },
  opts = {
    ---@module "snacks.picker"
    ---@type snacks.picker.Config
    picker = {
      layout = "default_with_changed_border",
      layouts = {
        default_with_changed_border = {
          layout = {
            box = "horizontal",
            width = 0.8,
            min_width = 120,
            height = 0.8,
            {
              box = "vertical",
              border = vim.g.user.border,
              title = "{title} {live} {flags}",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
            },
            { win = "preview", title = "{preview}", border = vim.g.user.border, width = 0.5 },
          },
        },
      },
    },
  },
}
