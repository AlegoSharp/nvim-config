local lfiletypes = {
    'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact',
    'svelte', 'vue', 'tsx', 'jsx', 'rescript', 'xml', 'php', 'markdown',
    'glimmer', 'handlebars', 'hbs'
}
local lskip_tags = {
    'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
    'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr',
    'menuitem'
}
require'nvim-treesitter.configs'.setup {
    autotag = {enable = true, filetypes = lfiletypes, skip_tags = lskip_tags}
}
