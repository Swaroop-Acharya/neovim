-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap 'jj' to Escape in insert mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

-- Find files from project root
vim.keymap.set("n", "<leader>F", function()
  require("telescope.builtin").find_files({ cwd = require("lazyvim.util").root.get() })
end, { desc = "Find Files (project root)" })
