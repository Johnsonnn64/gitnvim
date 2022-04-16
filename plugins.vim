call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'goolord/alpha-nvim'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'mbbill/undotree'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
  Plug 'dkarter/bullets.vim'
  Plug 'tpope/vim-fugitive'
  " telescope
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope-frecency.nvim'
  Plug 'tami5/sqlite.lua'
  "Plug 'romgrk/barbar.nvim'
  "Plug 'ethanholz/nvim-lastplace'
  "Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

