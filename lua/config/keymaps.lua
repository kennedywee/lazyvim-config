-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>rch", function()
  vim.cmd(":%s/^\\s*#.*$//g")
end, { desc = "Remove Comments Hashtag" })

map("n", "<leader>ba", function()
  vim.cmd(":bufdo bd")
end, { desc = "Close all buffers" })

map("n", "<C-c>", "ggVGy", { desc = "Yank all lines in file", silent = true })

map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down with indent", silent = true })

map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up with indent", silent = true })
