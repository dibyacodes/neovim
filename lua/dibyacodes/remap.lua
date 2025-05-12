vim.g.mapleader = " "

vim.keymap.set("n","<leader>pv",vim.cmd.Ex)
vim.keymap.set("n","<leader>b", ":NvimTreeToggle<CR>",{ noremap = true, silent = true})
