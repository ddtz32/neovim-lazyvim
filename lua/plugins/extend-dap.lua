return {
  "mfussenegger/nvim-dap",
  -- stylua: ignore
  keys = {
    { "<leader>dc", false },
    { "<leader>dC", false },
    { "<leader>di", false },
    { "<leader>do", false },
    { "<leader>dO", false },

    { "<F5>", function() require("dap").continue() end, desc = "Run/Continue" },
    { "<F9>", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    { "<F10>", function() require("dap").step_over() end, desc = "Step Over" },
    { "<F11>", function() require("dap").step_into() end, desc = "Step Into" },
    { "<F12>", function() require("dap").step_out() end, desc = "Step Out" },
  },
}
