local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"                 ._,.",
"            \"..-..pf.",
"           -L   ..#'",
"         .+_L  .\"]#",
"         ,'j' .+.j`                 -'.__..,.,p.",
"        _~ #..<..0.                 .J-.``..._f.",
"       .7..#_.. _f.                .....-..,`4'",
"       ;` ,#j.  T'      ..         ..J....,'.j`",
"      .` ..\"^.,-0.,,,,yMMMMM,.    ,-.J...+`.j@",
"     .'.`...' .yMMMMM0M@^=`\"\"g.. .'..J..\".'.jH",
"     j' .'1`  q'^)@@#\"^\".`\"='BNg_...,]_)'...0-",
"    .T ...I. j\"    .'..+,_.'3#MMM0MggCBf....F.",
"    j/.+'.{..+       `^~'-^~~\"\"\"\"'\"\"\"?'\"``'1`",
"    .... .y.}                  `.._-:`_...jf",
"    g-.  .Lg'                 ..,..'-....,'.",
"   .'.   .Y^                  .....',].._f",
"   ......-f.                 .-,,.,.-:--&`",
"                             .`...'..`_J`",
"                             .~......'#'",
"                             '..,,.,_]`",
"                            .L..`..``.",
"    NEOVIM"
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "n", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "p", "冷 > Projects", ":Telescope projects<CR>"),
    dashboard.button( "r", "  > Recent files"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "b", "  > File browser"   , ":Telescope file_browser<CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME | Telescope find_files<CR>"),
    dashboard.button( "g", "  > Git repos", "<cmd>lua require('telescope').extensions.repo.list{file_ignore_patterns={'/%.cache/', '/%.cargo/', '/%.config/coc/', '/%.vim/plugged/', '/%.local/share/nvim/'}}<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "e", "  > Planets" , ":Telescope planets<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
