-- local fn = vim.fn

-- auto install packer.nvim
-- local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--   PACKER_BOOTSTRAP = fn.system {
--     'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path,
--   }
--   print 'Installing packer... reopen Nvim'
-- end

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

  use 'lewis6991/impatient.nvim'
  use 'lukas-reineke/indent-blankline.nvim' -- lines in tab
  use 'dstein64/vim-startuptime'
  use 'mbbill/undotree' -- undo tree
  use 'numToStr/Comment.nvim' -- commenter
  use 'windwp/nvim-autopairs' -- auto pairs
  use 'glepnir/dashboard-nvim' -- starting screen

  use {
    "catppuccin/nvim", -- color scheme
    as = "catppuccin",
    run = ":CatppuccinCompile"
  }
  use {
    'nvim-lualine/lualine.nvim', -- status line
    requires = { 'kyazdani42/nvim-web-devicons' } -- file icon
  }
  use 'lewis6991/gitsigns.nvim' -- git signs
  use { 'akinsho/toggleterm.nvim', tag = 'main' } -- toggleterm
  use { 'phaazon/hop.nvim', branch = 'v2', config = function ()
    require'hop'.setup { keys = 'qweruiopasdfghjklcvnm'}
  end}


  use {
    'kyazdani42/nvim-tree.lua',
    opt = true,
    cmd = 'NvimTreeToggle',
    config = function() require 'giga.nvimtree' end
  } -- file tree

  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    opt = true,
    event = 'BufAdd',
    config = function () require 'giga.bufferline' end
  } -- buffers

  use {
    'lewis6991/gitsigns.nvim',
    opt = true,
    cmd = 'Gitsigns',
    config = function () require 'giga.gitsigns' end,
  } -- git signs


  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    opt = true,
    cmd = 'HopWord',
    config = function () require'hop'.setup { keys = 'qweruiopasdfghjklcvnm'} end,
  }

  -- cmp plugins
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-cmdline'
  -- use 'uga-rosa/cmp-dictionary'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- lsp
  use 'neovim/nvim-lspconfig' -- enable LSP
  use 'williamboman/nvim-lsp-installer' -- lsp installer

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', -- fzf
    requires = 'nvim-lua/plenary.nvim',
    opt = true,
    cmd = 'Telescope',
    config = function () require'giga.telescope' end
  }

  use 'nvim-telescope/telescope-ui-select.nvim'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    'nvim-treesitter/playground',
    opt = true,
    cmd = 'TSPlaygroundToggle'
  }

  -- org mode
  use 'nvim-orgmode/orgmode'
  use 'akinsho/org-bullets.nvim'

end)
