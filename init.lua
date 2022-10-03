vim.cmd [[behave mswin]]
vim.cmd [[set number]]

vim.opt.ve = "onemore"
vim.opt.mouse = "a"

vim.o.showtabline = 4

vim.opt.listchars = {tab = "••", trail = "•", space = "•", extends = "»", precedes = "«"}
vim.opt.ignorecase = true

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.mapleader = ' '

vim.cmd [["hi Normal guibg=#151515"]]

require("plugins")
require("pluginsconf")
require("mapping")
require("theme")
