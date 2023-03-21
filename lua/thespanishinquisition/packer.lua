-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  -- Undo Tree
  use ('mbbill/undotree')
  -- Fugitive (Git Wrapper)
  use ('tpope/vim-fugitive')
  -- Lateral File Explorer
  use ('nvim-tree/nvim-tree.lua')
  use ('nvim-tree/nvim-web-devicons')
  -- DAP
  use ('mfussenegger/nvim-dap')
  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }
  -- LSP Diagnostics Toggle
  use ('WhoIsSethDaniel/toggle-lsp-diagnostics.nvim')
  -- Status Line
  use({
      "NTBBloodbath/galaxyline.nvim",
      --your statusline
      config = function()
          require("galaxyline.themes.eviline")
      end,
      -- some optional icons
      requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })
end)
