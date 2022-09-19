-- vim.opt.list = true
-- vim.opt.listchars:append("space:•")
-- vim.opt.listchars:append("tab:••")
-- vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    -- char = "|",
    buftype_exclude = {"terminal", "NvimTree", "nofile"},
    space_char_blankline = " ",
    show_end_of_line = false,
    show_current_context = true
}
