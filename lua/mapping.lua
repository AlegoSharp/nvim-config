vim.api.nvim_set_keymap('n', '<C-p>',"<cmd>Telescope command_palette<CR>",{noremap = true})

vim.api.nvim_set_keymap('i', '<C-s>',"<cmd>w!<CR>",{noremap = true})

vim.api.nvim_set_keymap('i', '<C-z>', "<cmd>undo<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<C-z>', "<Nop>", {noremap = true})

vim.api.nvim_set_keymap('i', '<C-C>', "<cmd>yank<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<C-B>', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint : '))<CR>", {noremap = true})


vim.api.nvim_set_keymap('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>", {noremap = false})
vim.api.nvim_set_keymap('n', '<F10>', "<cmd>lua require'dap'.step_over()<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<F11>', "<cmd>lua require'dap'.step_into()<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<F3>', "<cmd>lua require'dap'.step_out()<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<F9>', "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<F8>', "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {noremap = true})
vim.api.nvim_set_keymap('n', '<F7>', "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", {noremap = true})
--vim.api.nvim_set_keymap('n', '<C-<F5>>', "lua require'dap'.repl.open()<CR>", {noremap = true})
--vim.api.nvim_set_keymap('n', '<C-<F5>>', "lua require'dap'.run_last()<CR>", {noremap = true})
