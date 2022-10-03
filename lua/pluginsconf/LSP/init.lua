require("pluginsconf.LSP.mason")
require("mason-lspconfig").setup()

require("pluginsconf.LSP.nvim-cmp")

-- Lua
require("lsp-colors").setup({
  Error = "#db4b4b",
  Warning = "#e0af68",
  Information = "#0db9d7",
  Hint = "#10B981"
})
