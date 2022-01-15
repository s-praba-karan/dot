call plug#begin()

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'numToStr/Comment.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'moll/vim-bbye'
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'ahmedkhalf/project.nvim'
Plug 'lewis6991/impatient.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'goolord/alpha-nvim'
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'folke/which-key.nvim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ap/vim-css-color'

"cmp plugins
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer' 
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'

"snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

"LSP
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'tamago324/nlsp-settings.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

"Telescope
Plug 'nvim-telescope/telescope.nvim'

"Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"git
Plug 'lewis6991/gitsigns.nvim'

"Colorscheme
Plug 'kvrohit/substrata.nvim' 

call plug#end()
