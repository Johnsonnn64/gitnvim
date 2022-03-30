call plug#begin('~/.config/nvim/autoload/plugged')

  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'catppuccin/nvim', {'as': 'catppuccin'}
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'mbbill/undotree'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'ethanholz/nvim-lastplace'
  Plug 'preservim/nerdcommenter'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
  Plug 'romgrk/barbar.nvim'
  Plug 'dkarter/bullets.vim'

call plug#end()

