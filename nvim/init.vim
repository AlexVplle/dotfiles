call plug#begin('~/.vim/plugged')

Plug 'goolord/alpha-nvim'

Plug 'folke/tokyonight.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-buffer'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

Plug 'nvim-lualine/lualine.nvim'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'

Plug 'numToStr/Comment.nvim'

Plug 'akinsho/toggleterm.nvim'

Plug 'akinsho/bufferline.nvim'

Plug '42Paris/42header'

Plug 'simrat39/rust-tools.nvim'

call plug#end()

lua require("init")

let g:python3_host_prog = '/usr/bin/python3'
let g:loaded_perl_provider = 0
let g:user42 = 'avapaill'
let g:mail42 = 'avapaill@student.42.fr'
