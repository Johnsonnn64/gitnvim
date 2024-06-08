-- local fn = vim.fn

-- auto install packer.nvim
-- local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
-- if fn.empty(fn.glob(install_path)) > 0 then
--   PACKER_BOOTSTRAP = fn.system {
--     'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path,
--   }
--   print 'Installing packer... reopen Nvim'
-- end

-- popup packer
require ('packer').init {
  display = {
    open_fn = function()
      return require ('packer.util').float { border = 'rounded' }
    end,
  },
}

return require ('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function() require ("indent_blankline").setup {show_current_context = true} end
  } -- lines in tab
  use 'dstein64/vim-startuptime'
  use 'mbbill/undotree' -- undo tree
  use {
    'brenoprata10/nvim-highlight-colors',
    opt = true,
    ft = { 'css' },
    config = function() require ('nvim-highlight-colors').setup {} end
  }

  use {
    'numToStr/Comment.nvim',
    opt = true,
    keys = {
      { 'n', 'gcc' },
      { 'n', 'gbb' },
      { 'x', 'gc' },
      { 'x', 'gb' },
    },
    config = function() require 'giga.commenter' end
  } -- commenter

  use {
    'windwp/nvim-autopairs',
    opt = true,
    event = { 'InsertEnter', 'CmdlineEnter' },
    config = function() require 'giga.autopair' end
  } -- auto pairs

  use {
    "catppuccin/nvim", -- color scheme
    as = "catppuccin",
    run = ":CatppuccinCompile"
  }

  use {
    'nvim-lualine/lualine.nvim', -- status line
    requires = { 'kyazdani42/nvim-web-devicons' } -- file icon
  }

  use {
    'akinsho/toggleterm.nvim',
    tag = 'main',
    opt = true,
    keys = "<c-\\>",
    config = function() require 'giga.toggleterm' end
  } -- toggleterm

  use {
    'kyazdani42/nvim-tree.lua',
    opt = true,
    cmd = 'NvimTreeToggle',
    config = function() require 'giga.nvimtree' end
  } -- file tree

  use {
    'akinsho/bufferline.nvim',
    tag = "*",
    opt = true,
    event = 'BufAdd',
    config = function() require 'giga.bufferline' end
  } -- buffers

  use {
    'lewis6991/gitsigns.nvim',
    opt = true,
    cmd = 'Gitsigns',
    config = function() require 'giga.gitsigns' end
  } -- git signs


  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    opt = true,
    cmd = 'HopWord',
    config = function() require 'hop'.setup { keys = 'qweruiopasdfghjklcvnm' } end
  }

  -- cmp plugins
  use {
    'hrsh7th/nvim-cmp',
    opt = true,
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-cmdline',
    },
    ft = {
      'lua',
      'html',
      'css',
      'c',
      'cpp',
      'sh',
      'javascript',
    },
    event = { 'InsertEnter', 'CmdlineEnter' },
    config = function() require 'giga.cmp' end
  }
  -- use 'uga-rosa/cmp-dictionary'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  use {
    'williamboman/mason.nvim',
    config = function ()
      require'giga.lsp.lspconfig'
    end,
    requires = {
      'williamboman/mason-lspconfig',
      'neovim/nvim-lspconfig'
    },
  }

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', -- fzf
    requires = 'nvim-lua/plenary.nvim',
    opt = true,
    cmd = 'Telescope',
    config = function() require 'giga.telescope' end
  }

  use 'nvim-telescope/telescope-ui-select.nvim'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    "windwp/nvim-ts-autotag"
  }

  use {
    'nvim-treesitter/playground',
    opt = true,
    cmd = 'TSPlaygroundToggle'
  }

  use {
    'rcarriga/nvim-notify',
    config = function() require 'giga.notify' end
  }

end)
