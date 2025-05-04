---@type LazySpec
return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>e",
      function()
        ---@diagnostic disable-next-line: missing-fields
        Snacks.explorer({ cwd = LazyVim.root() })
      end,
      desc = "Explorer Snacks (root dir)",
    },
    {
      "<leader>E",
      function()
        Snacks.explorer()
      end,
      desc = "Explorer Snacks (cwd)",
    },
    { "<leader>fe", false },
    { "<leader>fE", false },
    {
      "<leader>o",
      function()
        local explorer = Snacks.picker.get({ source = "explorer" })
        if #explorer ~= 0 then
          if explorer[1]:is_focused() then
            vim.cmd.wincmd("p")
          else
            explorer[1]:focus()
          end
        end
      end,
      desc = "Toggle explorer focus",
    },
  },
  opts = {
    picker = {
      sources = {
        explorer = {
          include = {
            "build*",
          },
        },
      },
    },
  },
}
