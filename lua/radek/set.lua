-- Set cursor style
vim.opt.guicursor = ""

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

--Tabs and indentation
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Appearance
vim.opt.termguicolors = true

-- Scrolling
vim.opt.scrolloff = 7
vim.opt.signcolumn = "yes"

-- Update time
vim.opt.updatetime = 50

-- Color column
vim.opt.colorcolumn = "80"

-- File name settings
vim.opt.isfname:append("@-@")
