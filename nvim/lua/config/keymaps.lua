-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Normal mode: Toggle comment for the current line
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
-- Visual mode: Toggle comment for the selection
vim.keymap.set("v", "<C-/>", "gc", { remap = true })
vim.keymap.set("v", "<C-_>", "gc", { remap = true })

-- Close current file (buffer) with leader + w
vim.keymap.set("n", "<leader>w", "<leader>bd", { remap = true, desc = "Close Current File" })

-- Press Shift + Enter to create a new line above
vim.keymap.set("n", "<C-CR>", "o<Esc>", { desc = "New line above" })
vim.keymap.set("n", "<S-CR>", "O<Esc>", { desc = "New line above" })

vim.keymap.set("n", "<leader>t", "<leader>ft", { remap = true })
vim.keymap.set("n", "<S-F>", "*", { remap = true })

-- Normal Mode
vim.keymap.set("n", "∆", ":m .+1<CR>==", { silent = true })
vim.keymap.set("n", "˚", ":m .-2<CR>==", { silent = true })

-- Visual Mode
vim.keymap.set("v", "∆", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "˚", ":m '<-2<CR>gv=gv", { silent = true })
