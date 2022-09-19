-- selection
vim.api.nvim_set_keymap('n', '<S-up>', '<S-v>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-down>', '<S-v>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-up>', '<up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-down>', '<down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-up>', '<c-o><S-v>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<S-down>', '<c-o><S-v>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-left>', 'vb', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-right>', 'vw', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<S-k>', '<S-v>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-j>', '<S-v>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-k>', '<up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-j>', '<down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-h>', 'b', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-l>', 'w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-h>', 'vb', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-l>', 'vw', { noremap = true, silent = true })

-- terminal
vim.api.nvim_set_keymap('n', '<Leader>et', ':bo | sp | resize 12% | term<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- tabs
vim.api.nvim_set_keymap('n', '<C-S-Tab>', ':tabprevious<CR>',
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Tab>', ':tabnext<CR>',
                        {noremap = true, silent = true})

-- nvim-tree
vim.api.nvim_set_keymap('n', '<Leader>ee', ":NvimTreeFindFileToggle<CR>",
                        {noremap = true})

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>fe',
                        "<cmd>Telescope find_files<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fg',
                        "<cmd>Telescope live_grep<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fb',
                        "<cmd>lua require('telescope.builtin').buffers()<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fh',
                        "<cmd>lua require('telescope.builtin').help_tags()<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>fo', "<cmd>Telescope oldfiles<CR>",
                        {noremap = true})
-- vim.api.nvim_set_keymap('n', '<Leader>fc', "<cmd>Telescope commands<CR>",
--                         {noremap = true})

-- Trouble

vim.api.nvim_set_keymap('n', '<leader>tt',
                        "<cmd>TroubleToggle<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>tw',
                        "<cmd>TroubleToggle workspace_diagnostics<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>td',
                        "<cmd>TroubleToggle document_diagnostics<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>tr',
                        "<cmd>TroubleToggle lsp_reference<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>tq',
                        "<cmd>TroubleToggle quickfix<CR>",
                        {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>tl',
                        "<cmd>TroubleToggle loclist<CR>",
                        {noremap = true})

-- neogit

vim.api.nvim_set_keymap('n', '<Leader>*', ':Neogit<CR>', { noremap = true, silent = true })

-- nvim dap
vim.api.nvim_set_keymap("n", "<F10>", "<cmd>lua require'dapui'.toggle()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F6>", "<cmd>lua require'dap'.step_over()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F7>", "<cmd>lua require'dap'.step_into()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<F8>", "<cmd>lua require'dap'.step_out()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>B", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>lp", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<CR>", {noremap = true})

