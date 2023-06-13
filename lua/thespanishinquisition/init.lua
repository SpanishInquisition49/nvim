require("thespanishinquisition.remap")
require("thespanishinquisition.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({

    -- Telescope 
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    -- Time Record
    'wakatime/vim-wakatime',
    -- Themes
    {
        "catppuccin/nvim",
        as = "catppuccin"
    },
    {
        'navarasu/onedark.nvim',
        as = 'onedark',
        config = function ()
            require('onedark').setup {
                style = 'darker'
            }
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        as = "gruvbox"
    },
    { 'rose-pine/neovim', name = 'rose-pine' },
    -- TMUX
    'christoomey/vim-tmux-navigator',
    -- Tree Sitter
    'nvim-treesitter/nvim-treesitter',
    -- Undo Tree
    'mbbill/undotree',
    -- Fugitive (Git Wrapper)
    'tpope/vim-fugitive',
    -- Lateral File Explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    -- DAP
    'mfussenegger/nvim-dap',
    { "mxsdev/nvim-dap-vscode-js", dependencies = {"mfussenegger/nvim-dap"} },
    'Weissle/persistent-breakpoints.nvim',
    {
        'rcarriga/nvim-dap-ui',
        dependencies = {'mfussenegger/nvim-dap'}
    },
    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
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
    },
    -- LSP Diagnostics Toggle
    'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim',
    -- LSP Outline
    'simrat39/symbols-outline.nvim',
    -- Status Line
    {
        "nvim-lualine/lualine.nvim",
        -- some optional icons
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true }
    },
    -- Terminal
    'akinsho/toggleterm.nvim',
    -- Scrollbar & GitSigns
    'lewis6991/gitsigns.nvim',
    'petertriho/nvim-scrollbar',
    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    -- Greeter
    'goolord/alpha-nvim',
    -- Which Key
    {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup()
        end
    },
    -- Indent Line
    'lukas-reineke/indent-blankline.nvim',
    -- Merge Tool
    {'sindrets/diffview.nvim', dependencies = 'nvim-lua/plenary.nvim' },
    -- Zen Mode
    'folke/zen-mode.nvim',
})
