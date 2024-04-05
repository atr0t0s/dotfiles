-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Escape
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")

-- Buffers
vim.keymap.set("n", "<leader>x", "<Esc>:bp<bar>sp<bar>bn<bar>bd<Return>", { desc = "Close buffer" })
vim.keymap.set("n", "<leader>[", "<Esc>:bprevious<Return>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>]", "<Esc>:bnext<Return>", { desc = "Next buffer" })

-- Telescope
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>tr", "<Esc>:Telescope resume<Return>", { desc = "Telescope Resume" })

-- Tmux
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww ~/scripts/tmux-sessionizer<CR>")
