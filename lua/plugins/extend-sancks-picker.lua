return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>t",
      function()
        local picker = Snacks.picker.get({ source = "explorer" })[1] or Snacks.picker.get({ source = "buffers" })[1]
        if picker then
          if picker:is_focused() then
            vim.cmd.wincmd("p")
          else
            picker:focus()
          end
        end
      end,
      desc = "Toggle explorer focus",
    },

    -- snacks explorer
    {
      "<leader>e",
      function()
        -- close buffers
        local buffers = Snacks.picker.get({ source = "buffers" })[1]
        if buffers then buffers:close() end
        vim.schedule(function() Snacks.explorer() end)
      end,
      desc = "Explorer Snacks (cwd)",
    },
    {
      "<leader>E",
      function()
        -- close buffers
        local buffers = Snacks.picker.get({ source = "buffers" })[1]
        if buffers then buffers:close() end
        ---@diagnostic disable-next-line: missing-fields
        vim.schedule(function() Snacks.explorer({ cwd = LazyVim.root() }) end)
      end,
      desc = "Explorer Snacks (root dir)",
    },
    { "<leader>fe", false },
    { "<leader>fE", false },

    -- snacks picker
    { "<leader>sg", false },
    {
      "<leader>sg",
      function() LazyVim.pick("grep", { cwd = vim.fn.expand("%:p:h") })() end,
      desc = "Grep (Directory of Current File)",
    },
    {
      "<leader>;",
      function()
        -- close explorer
        local explorer = Snacks.picker.get({ source = "explorer" })[1]
        if explorer then explorer:close() end
        vim.schedule(function()
          Snacks.picker.buffers({
            focus = "list",
            auto_close = false,
            jump = { close = false },
            ---@diagnostic disable-next-line: assign-type-mismatch
            layout = { preset = "sidebar_with_changed_border", preview = false },
            win = { list = { keys = { ["l"] = "confirm" } } },
          })
        end)
      end,
      desc = "Buffers (Sidebar)",
    },
  },
  opts = {
    ---@module "snacks.picker"
    ---@type snacks.picker.Config
    picker = {
      sources = {
        explorer = {
          layout = { preset = "sidebar_with_changed_border", preview = false },
          include = {
            "build",
            ".vscode",
            "launch.json",
            ".clangd",
          },
        },
      },
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
        sidebar_with_changed_border = {
          preview = "main",
          layout = {
            backdrop = false,
            width = 40,
            min_width = 40,
            height = 0,
            position = "left",
            border = "none",
            box = "vertical",
            {
              win = "input",
              height = 1,
              border = vim.g.user.border,
              title = "{title} {live} {flags}",
              title_pos = "center",
            },
            { win = "list", border = "none" },
            { win = "preview", title = "{preview}", height = 0.4, border = "top" },
          },
        },
      },
    },
  },
}
