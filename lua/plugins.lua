require("paq")({
    {"savq/paq-nvim"},
    {"nvim-lua/plenary.nvim"},

    -- editor
    {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
    {"p00f/nvim-ts-rainbow"},
    {"numToStr/Comment.nvim"},
    {"lukas-reineke/indent-blankline.nvim"},

    {"famiu/bufdelete.nvim"},

    {"lewis6991/gitsigns.nvim"},

    {"windwp/nvim-autopairs"},
    {"windwp/nvim-ts-autotag"},

    {"norcalli/nvim-colorizer.lua"},

    {"terryma/vim-multiple-cursors"},
    {"rinx/nvim-minimap"},

    -- lsp
    {"williamboman/nvim-lsp-installer"},
    {"neovim/nvim-lspconfig"},
    {"ray-x/lsp_signature.nvim"},

    {"j-hui/fidget.nvim"},
    {"onsails/lspkind-nvim"},
    {"OmniSharp/omnisharp-vim"},

    -- completion
    {"L3MON4D3/LuaSnip"},
    {"saadparwaiz1/cmp_luasnip"},
    {"rafamadriz/friendly-snippets"},

    {"hrsh7th/cmp-nvim-lsp"}, -- nvim-cmp source for neovim builtin LSP client
    {"hrsh7th/cmp-path"}, -- nvim-cmp source for path
    {"hrsh7th/cmp-buffer"}, -- nvim-cmp source for buffer words
    {"hrsh7th/cmp-nvim-lua"}, -- nvim-cmp source for nvim lua
    {"hrsh7th/cmp-emoji"}, -- nvim-cmp source for emoji
    {"f3fora/cmp-spell"}, -- spell source for nvim-cmp based on vim's spellsuggest
    {"hrsh7th/nvim-cmp"},

    -- dap
    {"mfussenegger/nvim-dap"},
    {"rcarriga/nvim-dap-ui"},
    {"theHamsta/nvim-dap-virtual-text"},

    -- ui
    {"projekt0n/github-nvim-theme"},
    {"kyazdani42/nvim-web-devicons"},
    {"kyazdani42/nvim-tree.lua"},
    {"akinsho/nvim-bufferline.lua"},
    {"NLKNguyen/papercolor-theme"},
    -- ui -- statusline
    {"nvim-lualine/lualine.nvim"},
    {"SmiteshP/nvim-gps"},
    {"dracula/vim"},

    -- navigator
    {"ray-x/guihua.lua", run = "cd lua/fzy && make"},
    {"ray-x/navigator.lua"},

    -- telescope
    {"nvim-telescope/telescope.nvim"},
    {"cljoly/telescope-repo.nvim"},
    {"nvim-telescope/telescope-file-browser.nvim"},
    {"nvim-telescope/telescope-dap.nvim"},

    -- symbols outline
    {"simrat39/symbols-outline.nvim"},

    -- trouble
    {"folke/trouble.nvim"},

    -- alpha
    {"goolord/alpha-nvim"},

    -- git
    {"TimUntersberger/neogit"},
    {"sindrets/diffview.nvim"},

    {"ahmedkhalf/project.nvim"},
})
