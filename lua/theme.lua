vim.cmd [[colorscheme tokyodark]]
vim.api.nvim_command('autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4')

vim.g.go_highlight_operators=1
vim.g.go_highlight_functions=1
vim.g.go_highlight_function_parameters=1
vim.g.go_highlight_function_calls=1
vim.g.go_highlight_types=1
vim.g.go_highlight_fields=1

