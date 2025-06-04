vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.hlsearch = false
vim.incsearch = true

vim.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.wrap = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tex", "markdown" },
  callback = function()
    vim.opt_local.spell = true
    vim.opt_local.spelllang = { "it", "en" }
  end
})

