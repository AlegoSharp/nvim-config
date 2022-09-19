require('bufferline').setup {
    highlights = {
        separator_selected = {
            fg = '#b3b1ad',
            -- guibg = '<color-value-here>'
        },
        separator_visible = {
            fg = '#b3b1ad',
            -- guibg = '<color-value-here>'
        },
        separator = {
            fg = '#b3b1ad',
            -- guibg = '<color-value-here>'
        },
    },
    options = {
        numbers = function(opts)
            return string.format('%s', opts.raise(opts.ordinal))
            -- return ""
        end,
        middle_mouse_command = "Bdelete! %d",
        close_command = "Bdelete! %d",
        diagnostics = "nvim_lsp",
        -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
        --     return " "..count..""
        -- end,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local icon = level:match("error") and " " or ""
            icon = level:match("warn") and " " or icon
            icon = level:match("hint") and " " or icon
            icon = level:match("info") and " " or icon
            return " " .. icon .. count
        end,
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        -- indicator_icon = '',
        -- indicator_icon = '',
        indicator = {
                icon = '▎', -- this should be omitted if indicator style is not 'icon'
                style = 'none' -- 'icon' | 'underline' | 'none',
            },
        close_icon = 'x',
        -- modified_icon = '●',
        modified_icon = 'פֿ',
        offsets = {
            {
                filetype = "NvimTree",
                text = "  NEOVIM",
                text_align = "left" --[[| "center" | "right",]]
            }
        },
        show_buffer_icons = true, -- | false, -- disable filetype icons for buffers
        show_buffer_close_icons = false, -- | false,
        show_close_icon = false, -- | false,
        show_tab_indicators = false, -- | false,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = {"|", "|"}, -- { "", "" } | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = true, -- | true,
        always_show_bufferline = true, -- | false,
        sort_by = 'extension',
        -- groups = {
        --     options = {
        --         toggle_hidden_on_enter = true -- when you re-enter a hidden group this options re-opens that group so the buffer is visible
        --     },
        --     items = {
        --         {
        --             name = "Tests", -- Mandatory
        --             highlight = {gui = "underline", guisp = "blue"}, -- Optional
        --             priority = 2, -- determines where it will appear relative to other groups (Optional)
        --             icon = "", -- Optional
        --             matcher = function(buf) -- Mandatory
        --                 return buf.filename:match('%Test') or buf.filename:match('%_spec') or buf.filename:match('%test')
        --             end,
        --         },
        --         {
        --             name = "裡Docs",
        --             -- highlight = {gui = "undercurl", guisp = "green"},
        --             auto_close = false,  -- whether or not close this group if it doesn't contain the current buffer
        --             matcher = function(buf)
        --                 return buf.filename:match('%.md') or buf.filename:match('%.txt')
        --             end
        --         }
        --     }
        -- }
        -- custom_areas = {
        --     left = function()
        --         local result = {}
        --         table.insert(result, {text = "│", guifg = "#b3b1ad"})
        --         return result
        --     end
        -- },
        -- custom_areas = {
        --     right = function()
        --         local result = {}
        --         local error = vim.lsp.diagnostic.get_count(0, [[Error]])
        --         local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
        --         local info = vim.lsp.diagnostic.get_count(0, [[Information]])
        --         local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])
        --
        --         if error ~= 0 then
        --             table.insert(result, {text = "  " .. error, guifg = "#EC5241"})
        --         end
        --
        --         if warning ~= 0 then
        --             table.insert(result, {text = "  " .. warning, guifg = "#EFB839"})
        --         end
        --
        --         if hint ~= 0 then
        --             table.insert(result, {text = "  " .. hint, guifg = "#A3BA5E"})
        --         end
        --
        --         if info ~= 0 then
        --             table.insert(result, {text = "  " .. info, guifg = "#7EA9A7"})
        --         end
        --         return result
        --     end,
        -- },
    }
}
