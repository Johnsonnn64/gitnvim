local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- leader key
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- switch through windows
keymap('n', '<leader>h', '<C-w>h', opts)
keymap('n', '<leader>j', '<C-w>j', opts)
keymap('n', '<leader>k', '<C-w>k', opts)
keymap('n', '<leader>l', '<C-w>l', opts)

-- resize
keymap('n', '<Up>', ':resize +2<CR>', opts)
keymap('n', '<Down>', ':resize -2<CR>', opts)
keymap('n', '<Right>', ':vertical resize +2<CR>', opts)
keymap('n', '<Left>', ':vertical resize -2<CR>', opts)

-- move lines
keymap('v', '<C-j>', ":m '<-2<CR>gv=gv", opts)
keymap('v', '<C-k>', ":m '>+1<CR>gv=gv", opts)
keymap('x', '<C-j>', ":m '>+1<CR>gv-gv", opts)
keymap('x', '<C-k>', ":m '<-2<CR>gv-gv", opts)

-- keymaps for configs
-- TODO: may be replaced with fzf
-- keymap('n', '<leader>nc' ':tabnew ~/.config/nvim/init.lua<CR>')
-- keymap('n', '<leader>np' ':tabnew ~/.config/nvim/lua/giga/plugins.lua<CR>')

-- spellcheck
keymap('n', '<leader><leader>', ':setlocal spell! spellang=en_us<CR>', opts)

-- telescope
keymap('n', '<leader>ff', ":Telescope find_files hidden=true theme=dropdown<CR>", opts)
keymap('n', '<leader>f/', ":Telescope find_files hidden=true theme=dropdown cwd=~<CR>", opts)
keymap('n', '<leader>fg', ":Telescope live_grep theme=dropdown<CR>", opts)
keymap('n', '<leader>fr', ":Telescope frecency theme=dropdown previewer=false<CR>", opts)
