-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- windows
vim.keymap.del("n", "<leader>uz")
vim.keymap.del("n", "<leader>uZ")
Snacks.toggle.zen():map("<leader>z")
Snacks.toggle.zoom():map("<leader>wm"):map("<leader>Z")
