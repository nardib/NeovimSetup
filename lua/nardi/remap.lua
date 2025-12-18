vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- this allows to move the highlited lines in visual mode up and down in the file with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- used to paste a text (in the vim register) without loosing its content
vim.keymap.set("x", "<leader>p", "\"_dP")

-- this is for copying a text in the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
