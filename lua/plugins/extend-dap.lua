return {
  {
    "rcarriga/nvim-dap-ui",
    keys = {
      { "<leader>du", false },
      { "<leader>dr", false },
      {
        "<leader>dr",
        function() require("dapui").toggle({ layout = 2, reset = true }) end,
        desc = "Toggle REPL and Console",
      },
      { "<leader>du", function() require("dapui").toggle({ reset = true }) end, desc = "Dap UI" },
      { "<leader>dU", function() require("dapui").open({ reset = true }) end, desc = "Reset Dap UI" },
    },
  },
  {
    "Weissle/persistent-breakpoints.nvim",
    dependencies = "mfussenegger/nvim-dap",
    event = "BufReadPost",
    opts = { load_breakpoints_event = "BufReadPost" },
  },
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
        function() require("persistent-breakpoints.api").toggle_breakpoint() end,
        desc = "Toggle Breakpoint",
      },
      {
        "<leader>dc",
        function()
          -- use ${MI.dump(), true} to execute dump function automatically,
          -- since in log point, we can only print value of variable
          require("persistent-breakpoints.api").set_conditional_breakpoint()
        end,
        desc = "Set Breakpoint Condition",
      },
      {
        "<leader>dm",
        function()
          -- use {var} to print value of variable named var
          require("persistent-breakpoints.api").set_log_point()
        end,
        desc = "Set Breakpoint Message",
      },
      { "<F5>", function() require("dap").continue() end, desc = "Run/Continue" },
      { "<F9>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
      { "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
      { "<F12>", function() require("dap").step_out() end, desc = "Step Out" },
    },
  },
}
