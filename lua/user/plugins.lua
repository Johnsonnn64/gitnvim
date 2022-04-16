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
  use({
    "catppuccin/nvim", -- color scheme
    as = "catppuccin"
  })
  use {
    'nvim-lualine/lualine.nvim', -- status line
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- file icon
  }
  use 'mbbill/undotree' -- undo tree
  use 'lukas-reineke/indent-blankline.nvim' -- lines in tab
  use 'preservim/nerdcommenter' -- commenter
  use { 'neoclide/coc.nvim', branch = 'release' } -- auto suggest
  use { 'godlygeek/tabular' } -- prettier
  -- markdown
  use { 'preservim/vim-markdown', opt = true, ft = { 'markdown'} }
  use { 'dkarter/bullets.vim', opt = true, ft = { 'markdown' } }
  use { 'akinsho/bufferline.nvim', tag = "*" } -- buffers
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
end)
