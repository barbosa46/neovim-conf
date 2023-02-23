local Plug = require 'maverick.plug_interface'

Plug.begin()

Plug 'http://github.com/tpope/vim-surround' -- Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' -- NerdTree
Plug 'https://github.com/tpope/vim-commentary' -- For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' -- Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' -- Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' -- Vim Terminal
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'karoliskoncevicius/vim-sendtowindow'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'xiyaowong/nvim-transparent'

Plug 'theprimeagen/harpoon'

-- Colors
Plug ('rose-pine/neovim',{as='rose-pine'})
Plug 'https://github.com/ap/vim-css-color' -- CSS Color Preview

-- " LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- " Autocompletion
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'

-- "  Snippets
Plug 'L3MON4D3/LuaSnip'
-- " Snippet collection (Optional)
Plug 'rafamadriz/friendly-snippets'

Plug 'VonHeikemen/lsp-zero.nvim'

-- Love-Hate Relationship
Plug 'https://github.com/jiangmiao/auto-pairs'

-- Julia REPL
Plug 'https://github.com/jpalardy/vim-slime'

Plug.ends()

