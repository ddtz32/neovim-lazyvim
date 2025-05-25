return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      section_separators = { left = "", right = "" },
      component_separators = "",
    },
    sections = {
      -- copied from lazyvim, then add customized configuration
      lualine_a = { { "mode", separator = { left = "" } } },
      lualine_c = {
        LazyVim.lualine.root_dir(),
        {
          "diagnostics",
          symbols = {
            error = LazyVim.config.icons.diagnostics.Error,
            warn = LazyVim.config.icons.diagnostics.Warn,
            info = LazyVim.config.icons.diagnostics.Info,
            hint = LazyVim.config.icons.diagnostics.Hint,
          },
        },
        { LazyVim.lualine.pretty_path({ length = 0 }) },
      },
      lualine_y = { "filetype" },
      lualine_z = {
        { "progress", separator = { left = "" } },
        { "location", separator = { right = "" } },
      },
    },
  },
}
