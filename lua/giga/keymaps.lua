local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- leader key
keymap('', '<Space>', '<Nop>', opts)

-- switch through windows
-- keymap('n', '<c-h>', '<C-w>h', opts)
-- keymap('n', '<c-j>', '<C-w>j', opts)
-- keymap('n', '<c-k>', '<C-w>k', opts)
-- keymap('n', '<c-l>', '<C-w>l', opts)

-- resize
keymap('n', '<Up>', ':resize +2<CR>', opts)
keymap('n', '<Down>', ':resize -2<CR>', opts)
keymap('n', '<Right>', ':vertical resize +2<CR>', opts)
keymap('n', '<Left>', ':vertical resize -2<CR>', opts)

-- move lines
-- keymap('v', '<C-j>', ":m '<-2<CR>gv=gv", opts)
-- keymap('v', '<C-k>', ":m '>+1<CR>gv=gv", opts)
-- keymap('x', '<C-j>', ":m '>+1<CR>gv-gv", opts)
-- keymap('x', '<C-k>', ":m '<-2<CR>gv-gv", opts)

-- spellcheck
keymap('n', '<leader><leader>', ':setlocal spell! spelllang=en_us<CR>', opts)

-- telescope
keymap('n', '<leader>ff', ":Telescope find_files hidden=true theme=dropdown<CR>", opts)
keymap('n', '<leader>f/', ":Telescope find_files hidden=true theme=dropdown cwd=~<CR>", opts)
keymap('n', '<leader>fg', ":Telescope live_grep theme=dropdown<CR>", opts)
keymap('n', '<leader>fr', ":Telescope oldfiles theme=dropdown previewer=false<CR>", opts)
keymap('n', 'gr', ":Telescope lsp_references theme=ivy initial_mode=normal layout_config={height=0.25}<CR>", opts)
keymap('n', '<leader>q', ":Telescope diagnostics theme=ivy initial_mode=normal layout_config={height=0.25}<CR>", opts)
keymap('n', '<leader>fn', ":Telescope notify theme=dropdown<CR>", opts)

-- nvimtree
keymap('n', '<leader>/', ':NvimTreeToggle<CR>', opts)

-- notify
keymap('n', '<leader>e', ":lua require('notify').dismiss()<CR>", opts)

-- bufferline
keymap('n', '<leader>d', ':BufferLinePickClose<CR>', opts)
keymap('n', '<leader>bt', ':BufferLineSortByTabs<CR>', opts)
keymap('n', '<leader>1', ':BufferLineGoToBuffer 1<CR>', opts)
keymap('n', '<leader>2', ':BufferLineGoToBuffer 2<CR>', opts)
keymap('n', '<leader>3', ':BufferLineGoToBuffer 3<CR>', opts)
keymap('n', '<leader>4', ':BufferLineGoToBuffer 4<CR>', opts)
keymap('n', '<leader>5', ':BufferLineGoToBuffer 5<CR>', opts)
keymap('n', '<leader>6', ':BufferLineGoToBuffer 6<CR>', opts)
keymap('n', '<leader>7', ':BufferLineGoToBuffer 7<CR>', opts)
keymap('n', '<leader>8', ':BufferLineGoToBuffer 8<CR>', opts)
keymap('n', '<leader>9', ':BufferLineGoToBuffer 9<CR>', opts)
keymap('n', '<leader>]', ':BufferLineCycleNext<CR>', opts)
keymap('n', '<leader>[', ':BufferLineCyclePrev<CR>', opts)

-- gitsigns
keymap('n', '<leader>gs', ":Gitsigns toggle_signs<CR>", opts)
keymap('n', '<leader>gw', ":Gitsigns toggle_word_diff<CR>", opts)
keymap('n', '<leader>gp', ":Gitsigns preview_hunk<CR>", opts)
keymap('n', '<leader>gj', ":Gitsigns next_hunk<CR>", opts)
keymap('n', '<leader>gk', ":Gitsigns prev_hunk<CR>", opts)
keymap('n', '<leader>gr', ":Gitsigns reset_hunk<CR>", opts)

-- hop.nvim
keymap('', '<leader>w', "<cmd>HopWord<CR>", opts)

-- custom
keymap('v', '<leader>n', ':FormatNumber<CR>', opts)
