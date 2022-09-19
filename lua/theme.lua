-- Enable true colours in terminal
vim.o.termguicolors = true

vim.cmd[[colorscheme papercolor]]

local gps = require("nvim-gps")

local current_signature = function()
    local sig = require("lsp_signature").status_line(100)
    return sig.label
end

require("lualine").setup({
    options = {
        section_separators = { left = "|", right = "|" },
        component_separators = { left = "•", right = "•" },
        -- section_separators = '',
        -- theme = "nightfox"
    },
    extensions = { "nvim-tree", "symbols-outline", "fzf", "quickfix" },
    sections = {
        lualine_a = {
            -- { "mode", separator = { right = "", left = "" }, right_padding = 2 },
            -- { "mode", separator = { right = "", left = "" }, right_padding = 2 },
        },
        lualine_c = {
            {
                separators = "•",
                "filename",
                icon = "",
                symbols = {
                    modified = " פֿ", -- when the file was modified
                    readonly = " ", -- if the file is not modifiable or readonly
                    unnamed = "[No Name]", -- default display name for unnamed buffers
                },
            },
            { gps.get_location, cond = gps.is_available },
            {
                current_signature,
                icon = "",
            }
        },
        lualine_z = {
            -- { "location", separator = { right = "", left = "" }, left_padding = 2, right_padding = 2 },
        },
    },
    -- sections = {lualine_c = {{gps.get_location, condition = gps.is_available}}}
})
