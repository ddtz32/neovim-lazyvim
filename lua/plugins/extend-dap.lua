return {
  {
    "Weissle/persistent-breakpoints.nvim",
    dependencies = { "mfussenegger/nvim-dap" },
    event = "BufReadPost",
    opts = {
      load_breakpoints_event = "BufReadPost",
    },
  },
  -- stylua: ignore
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<leader>db", false },
      { "<leader>dB", false },
      { "<leader>dc", false },
      { "<leader>dC", false },
      { "<leader>di", false },
      { "<leader>do", false },
      { "<leader>dO", false },

      {
        "<leader>db",
        function()
          require("persistent-breakpoints.api").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      {
        "<leader>dB",
        function()
          require("persistent-breakpoints.api").set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end,
        desc = "Breakpoint Condition",
      },
      { "<F5>", function() require("dap").continue() end, desc = "Run/Continue" },
      { "<F9>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
      { "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
      { "<F12>", function() require("dap").step_out() end, desc = "Step Out" },
    },
  },
}
