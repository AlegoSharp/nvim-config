require("scrollbar").setup({
    show = true,
    show_in_active_only = true,
    set_highlights = true,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    max_lines = false, -- disables if no. of lines in buffer exceeds this
    handle = {
        text = " ",
        color = nil,
        cterm = nil,
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = {
            text = { "-", "=" },
            priority = 0,
            color = nil,
            cterm = nil,
            highlight = "Search",
        },
        Error = {
            text = { "-", "=" },
            priority = 1,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
            text = { "-", "=" },
            priority = 2,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextWarn",
        },
        Info = {
            text = { "-", "=" },
            priority = 3,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextInfo",
        },
        Hint = {
            text = { "-", "=" },
            priority = 4,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextHint",
        },
        Misc = {
            text = { "-", "=" },
            priority = 5,
            color = nil,
            cterm = nil,
            highlight = "Normal",
        },
    },
    excluded_buftypes = {
        "terminal",
    },
    excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
    },
    autocmd = {
        render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
        },
        clear = {
            "BufWinLeave",
            "TabLeave",
            "TermLeave",
            "WinLeave",
        },
    },
    handlers = {
        diagnostic = true,
        search = false, -- Requires hlslens to be loaded, will run require("scrollbar.handlers.search").setup() for you
    },
})local theme = {
  fill = 'TabLineFill',
  -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
  head = 'TabLine',
  current_tab = 'TabLineSel',
  tab = 'TabLine',
  win = 'TabLine',
  tail = 'TabLine',
}
require('tabby.tabline').set(function(line)
  return {
    {
      { '  ', hl = theme.head },
      line.sep('', theme.head, theme.fill),
    },
    line.tabs().foreach(function(tab)
      local hl = tab.is_current() and theme.current_tab or theme.tab
      return {
        line.sep('', hl, theme.fill),
        tab.is_current() and '' or '',
        tab.number(),
        tab.name(),
        tab.close_btn(''),
        line.sep('', hl, theme.fill),
        hl = hl,
        margin = ' ',
      }
    end),
    line.spacer(),
    line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
      return {
        line.sep('', theme.win, theme.fill),
        win.is_current() and '' or '',
        win.buf_name(),
        line.sep('', theme.win, theme.fill),
        hl = theme.win,
        margin = ' ',
      }
    end),
    {
      line.sep('', theme.tail, theme.fill),
      { '  ', hl = theme.tail },
    },
    hl = theme.fill,
  }
end)
