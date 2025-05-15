-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- windows
vim.keymap.del("n", "<leader>uz")
vim.keymap.del("n", "<leader>uZ")
Snacks.toggle.zen():map("<leader>z")
Snacks.toggle.zoom():map("<leader>Z")

-- floating terminal
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")
-- stylua: ignore
vim.keymap.set("n", "<leader>t", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })
-- stylua: ignore
vim.keymap.set("n", "<c-/>", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
-- stylua: ignore
vim.keymap.set("n", "<c-_>", function() Snacks.terminal() end, { desc = "which_key_ignore" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<cmd>NvimTmuxNavigateLeft<cr>", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-j>", "<cmd>NvimTmuxNavigateDown<cr>", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<C-k>", "<cmd>NvimTmuxNavigateUp<cr>", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<C-l>", "<cmd>NvimTmuxNavigateRight<cr>", { desc = "Go to Right Window" })
