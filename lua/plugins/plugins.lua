return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'terroo/vim-simple-emoji'
  use 'vim-airline/vim-airline'
  use 'bluz71/vim-moonfly-colors'
  use {"williamboman/mason.nvim"}
  use {'andweeb/presence.nvim', config="require('presence-config')"}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use{
  'nvim-tree/nvim-tree.lua',
  }
  use("kyazdani42/nvim-web-devicons")
  use("MunifTanjim/nui.nvim")
  use 'sheerun/vim-polyglot'
  use 'neovim/nvim-lspconfig'
  use("williamboman/nvim-lsp-installer")
  use("nvim-treesitter/nvim-treesitter")
  use("jose-elias-alvarez/null-ls.nvim")
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use("windwp/nvim-autopairs")
  use("norcalli/nvim-colorizer.lua")
  use("lewis6991/gitsigns.nvim")
  use("akinsho/bufferline.nvim")
  use({ "nvim-neo-tree/neo-tree.nvim", branch = "v2.x" })
  use("nvim-lualine/lualine.nvim")
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'ray-x/lsp_signature.nvim'
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use 'onsails/lspkind-nvim'


 end)
