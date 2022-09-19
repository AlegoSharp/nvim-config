local o = vim.opt -- editor options
local g = vim.g -- Global editor variables
local cmd = vim.cmd -- exectue vimscript in lua
local fn = vim.fn -- invoke vim-functions in lua
local go = vim.go

-- leader key
g.mapleader = ' '

-- python3 provider
g.python3_host_prog = "/usr/bin/python3"

cmd([[filetype plugin indent on]])

o.syntax = "on"

g.asmsyntax = "asm"

-- Keep a backup copy of a file when overwriting it.This also sets the 'undofile' option, if
-- available.  This will store the multi-level undo information in a file.  The result is
-- that when you change a file, exit Vim, and then edit the file again, you can undo
-- the changes made previously.
if fn.has("vms") == 1 then
    o.backup = false
else
    -- create a backup of the file before editing
    o.backup = true
    if fn.has("persistent_undo") == 1 then
        -- enable undofile , which helps you undo a lot and redo also a lot
        o.undofile = true
        o.undolevels = 30000
        o.undoreload = 30000
    end
end

o.lazyredraw = true

o.cursorline = true

o.relativenumber = false

o.number = true

-- enable tree style view
g.netrw_liststyle = 3

-- Disable top banner can be switched with I
g.netrw_banner = 0

-- Incremental live completion
o.inccommand = "nosplit"

o.backupdir = "/tmp/"

o.backupdir = "/tmp/"

o.undodir = "/tmp/"

o.backupext = ".vimbak"

o.updatetime = 100

o.shortmess = "c"

o.signcolumn = "yes"

o.swapfile = false

o.expandtab = true

o.hidden = true

o.mouse = "a"

o.number = true

o.wrap = true

-- Wrap-broken line prefix
-- o.showbreak = [[>>>\ \ \]]

o.textwidth = 117

o.showmatch = true

o.complete = "kspell"

o.spelllang = "es_us,en_uk,fr_fr"

o.visualbell = true

o.ignorecase = true

o.smartcase = true

o.wildignorecase = true

o.wildignorecase = true

o.smartindent = false

o.softtabstop = 4

o.tabstop = 4

o.confirm = false

o.ruler = true

o.cmdheight = 1

o.autowriteall = false

o.history = 10000

o.list = true



o.foldmethod = "indent"

o.foldlevel = 99

o.fcs = "eob: ,vert:│,stl: ,stlnc: ,fold: ,diff: "

o.laststatus = 3

o.clipboard:append("unnamedplus")

cmd([[autocmd BufWritePre * %s/\s\+$//e]])

cmd([[autocmd TermOpen * setlocal number relativenumber]])

cmd [[
  autocmd FileType xml,html,xhtml,css,scss,javascript,yaml,vue,c setlocal shiftwidth=2 tabstop=2
]]
cmd [[
  autocmd FileType go,lua,php,tex setlocal shiftwidth=4 tabstop=4
]]

g.scrollview_excluded_filetypes = {'NvimTree'}

g.scrollview_column = 1

g.scrollview_hide_on_intersect = 1

o.shiftwidth = 4

o.tabstop = 4



