-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}

	-- Color Scheme
	use {"tiagovla/tokyodark.nvim"}


	use {"nvim-lua/plenary.nvim"}
	use {"nvim-telescope/telescope.nvim"}
	use {"LinArcX/telescope-command-palette.nvim"}
	use {"Xuyuanp/scrollbar.nvim"}
	use {"petertriho/nvim-scrollbar"}
	use {"nanozuki/tabby.nvim"}
	use({
		'noib3/nvim-cokeline',
		requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
		config = function()
			require('cokeline').setup()
		end
	})
	use {"SmiteshP/nvim-gps"}
	use {"nvim-treesitter/nvim-treesitter"}
	use {"p00f/nvim-ts-rainbow"}
	use {"numToStr/Comment.nvim"}
	use {"lukas-reineke/indent-blankline.nvim"}
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		'nvim-lualine/lualine.nvim'
	}
	use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
	use {"gelguy/wilder.nvim"}
	use {"nixprime/cpsm"}
	use {"sharkdp/fd"}
	use { "romgrk/fzy-lua-native" }
	use {'VonHeikemen/lsp-zero.nvim'}
	-- LSP Support
	use {'neovim/nvim-lspconfig'}
	use {'williamboman/mason.nvim'}
	use {'williamboman/mason-lspconfig.nvim'}

	-- Autocompletion
	use {'hrsh7th/nvim-cmp'}
	use {'hrsh7th/cmp-buffer'}
	use {'hrsh7th/cmp-path'}
	use {'saadparwaiz1/cmp_luasnip'}
	use {'hrsh7th/cmp-nvim-lsp'}
	use {'hrsh7th/cmp-nvim-lua'}
	use {'folke/lsp-colors.nvim'}

	-- Snippets
	use {'hrsh7th/cmp-vsnip'}
	use {'hrsh7th/vim-vsnip'}

	-- LANG
	use {"fatih/vim-go"}
	use {"leoluz/nvim-dap-go"}
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)
