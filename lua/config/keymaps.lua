-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Handy way to get out of insert mode blazingly fast
vim.keymap.set("i", "jk", "<esc>", { silent = true })

-- Alternative to C-s for file saving
vim.keymap.set("n", "<leader>fw", "<cmd>w<cr>", { silent = true, desc = "Save buffer" })
vim.keymap.set("n", "<leader>fW", "<cmd>wa<cr>", { silent = true, desc = "Save all buffers" })

-- Close all buffers but the current one
vim.keymap.set("n", "<leader>bx", ":%bd|e#<cr>", { silent = true, desc = "Close all other buffers" })

-- Toggle between light and dark modes easily
vim.keymap.set("n", "<leader>ut", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end, { silent = true, desc = "Toggle light/dark mode" })

-- Get back to the alpha dashboard
vim.keymap.set("n", "<leader>d", "<cmd>Alpha<cr>", { silent = true, desc = "Go to dashboard" })
