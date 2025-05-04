---@type LazySpec
return {
  "folke/lazydev.nvim",
  opts = {
    library = {
      "${3rd}/luv/library",
      "lazy.nvim",
      "LazyVim",
      "snacks.nvim",
    },
  },
}
