-- user specific globals about ui settings
-- these globals are also used in lazy.nvim, so must be set early
vim.g.user = {
  border = "single",
  backdrop = 60,
  width = 0.8,
  height = 0.8,
}

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
