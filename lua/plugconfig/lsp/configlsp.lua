-- require("plugconfig.lsp.lspinstaller")
local lspconfig = require("lspconfig")

-- local opts = {noremap = true, silent = true}
-- vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
    vim.diagnostic.config({
        virtual_text = false,
        -- float = {scope = "line", severity_sort = true, source = "never"},
        signs = true,
        underline = true,
        update_in_insert = true,
        severity_sort = true
    })

    vim.cmd [[autocmd BufReadPre autocmd! lsp_document_highlight CursorHold]]
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = {noremap = true, silent = true, buffer = bufnr}
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<leader>ff', vim.lsp.buf.formatting, bufopts)
    vim.keymap.set('n', '<leader>sh', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('v', '<leader>lf', vim.lsp.buf.range_formatting, bufopts)
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    -- vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    -- vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    -- vim.keymap.set('n', '<space>wl', function()
    --     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    -- end, bufopts)
    -- vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    -- vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp
                                                                     .protocol
                                                                     .make_client_capabilities())

local function make_capabilities()
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp
                                                                     .protocol
                                                                     .make_client_capabilities())
    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..

    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.signatureHelp.contextSupport = true
    return capabilities
end

lspconfig.emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
        'html',
        'typescriptreact',
        'javascriptreact',
        'css',
        'sass',
        'scss',
        'less',
        'php'
    }
})

lspconfig.stylelint_lsp.setup({
    on_attach = on_attach,
    capabilities = make_capabilities(),
    settings = {
        stylelintplus = {
            autoFixOnFormat = true,
            validateOnType = true,
            cssInJs = true,
        },
    },
})


lspconfig.html.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.sumneko_lua.setup {on_attach = on_attach, capabilities = make_capabilities()}

lspconfig.gopls.setup {on_attach = on_attach, capabilities = make_capabilities()}

lspconfig.dockerls.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.jsonls.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.tsserver.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.vuels.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.bashls.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.clangd.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.cssls.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.phpactor.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.texlab.setup({on_attach = on_attach, capabilities = make_capabilities()})

lspconfig.ltex.setup({
    on_attach = on_attach,
    capabilities = make_capabilities(),
    settings = {
        ltex = {
            completionEnabled = true,
            language = "fr",
            -- dictionary = {
            --     -- ["fr"] = { "Arkéa", ":/home/alban/.config/nvim/ltex.txt" },
            --     ["fr"] = {":/home/alban/.config/nvim/ltex.dictionary.fr.txt"},
            -- },
        },
    },
})
