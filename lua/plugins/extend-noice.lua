return {
  "folke/noice.nvim",
  init = function(plugin)
    local util = require("lazy.core.util")

    local patch = vim.fn.stdpath("config") .. "/patches/noice.diff"

    -- git clean
    vim.api.nvim_create_autocmd("User", {
      pattern = { "LazyCheckPre", "LazyUpdatePre" },
      callback = function()
        util.info("Cleaning " .. plugin.name, { title = "patch" })
        vim.fn.system({ "git", "-C", plugin.dir, "reset", "--hard", "HEAD" })
      end,
    })

    -- git apply
    vim.api.nvim_create_autocmd("User", {
      pattern = { "LazyCheck", "LazyUpdate" },
      callback = function()
        util.info("Patching " .. plugin.name, { title = "patch" })
        local output = vim.fn.system({ "git", "-C", plugin.dir, "apply", patch })

        if vim.v.shell_error ~= 0 then util.error("Patch failed: " .. output, { title = "patch" }) end
      end,
    })
  end,
  opts = {
    presets = {
      lsp_doc_border = {
        views = {
          hover = {
            size = {
              max_height = math.floor(vim.g.user.height * vim.o.lines / 2),
              max_width = math.floor(vim.g.user.width * vim.o.columns),
            },
            border = { style = vim.g.user.border },
          },
        },
      },
      command_palette = {
        views = {
          cmdline_popup = { border = { style = vim.g.user.border } },
          cmdline_popupmenu = { border = { style = vim.g.user.border } },
        },
      },
    },
    views = {
      popup = {
        border = vim.g.user.border,
        size = {
          width = vim.g.user.width,
          height = vim.g.user.height,
        },
      },
    },
  },
}
