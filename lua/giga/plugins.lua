local fn = vim.fn

-- auto install packer.nvim
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path,
  }
  print 'Installing packer... reopen Nvim'
  vim.cmd [[packadd packer.nvim]]
end

-- auto sync packer
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- popup packer
require('packer').init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config) -- start screen
    end
  }
  use { 'kyazdani42/nvim-tree.lua' } -- file tree
  use 'jiangmiao/auto-pairs' -- pairs
  use {
    "catppuccin/nvim", -- color scheme
    as = "catppuccin",
  }
  use {
    'nvim-lualine/lualine.nvim', -- status line
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- file icon
  }
  use { 'akinsho/bufferline.nvim', tag = "*" } -- buffers
  use 'mbbill/undotree' -- undo tree
  use 'lukas-reineke/indent-blankline.nvim' -- lines in tab
  use 'preservim/nerdcommenter' -- commenter

  -- markdown
  use { 'preservim/vim-markdown', opt = true, ft = { 'markdown'} }
  use { 'dkarter/bullets.vim', opt = true, ft = { 'markdown' } }

  -- cmp plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- lsp
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'williamboman/nvim-lsp-installer' -- lsp installer

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', -- fzf
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "nvim-telescope/telescope-frecency.nvim", -- recent fzf
    config = function()
      require"telescope".load_extension("frecency")
    end,
    requires = {'tami5/sqlite.lua'}
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use 'lewis6991/gitsigns.nvim'
end)