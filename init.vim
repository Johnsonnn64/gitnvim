"                          _
"   ____  ___  ____ _   __(_)___ ___
"  / __ \/ _ \/ __ \ | / / / __ `__ \
" / / / /  __/ /_/ / |/ / / / / / / /
"/_/ /_/\___/\____/|___/_/_/ /_/ /_/
"

" settings
source $HOME/.config/nvim/plugins.vim
let mapleader=" "
set noshowmode
set hidden
set encoding=utf-8
set showmatch
set termguicolors
set ignorecase
set smartcase
set hlsearch
set incsearch
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set expandtab
set smartindent
set splitbelow splitright
set number relativenumber
set shortmess+=A
filetype plugin indent on
syntax on
set clipboard=unnamedplus
filetype plugin on
set cursorline
map <leader><leader> :setlocal spell! spelllang=en_us<CR>
autocmd FileType * setlocal formatoptions-=cro
" filetypes
autocmd BufRead,BufNewFile ~/personal/school/* set filetype=markdown
autocmd BufRead,BufNewFile ~/.local/share/calcurse/notes/* set filetype=markdown
autocmd BufWritePre * %s/\s\+$//e
" movement
map <silent> <leader>h :wincmd h<CR>
map <silent> <leader>j :wincmd j<CR>
map <silent> <leader>k :wincmd k<CR>
map <silent> <leader>l :wincmd l<CR>
map <silent> <leader>bd :bd<CR>
nmap <silent> tt :BufferLineCycleNext<CR>
nmap <silent> tT :BufferLineCyclePrevious<CR>
map <silent> <Up> :resize +2 <CR>
map <silent> <Down> :resize -2 <CR>
map <silent> <C-Up> :vertical resize +2 <CR>
map <silent> <C-Down> :vertical resize -2 <CR>
vmap <silent> K :m -1 <CR>
vmap <silent> J :m -1 <CR>
nnoremap <silent> <C-j> :m .+1<CR>==
nnoremap <silent> <C-k> :m .-2<CR>==
inoremap <silent> <C-j> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-k> <Esc>:m .-2<CR>==gi
vnoremap <silent> <C-j> :m '>+1<CR>gv=gv
vnoremap <silent> <C-k> :m '<-2<CR>gv=gv
imap kj <Esc>
" edit config
map <silent> <leader>np :tabnew ~/.config/nvim/plugins.vim <CR>
map <silent> <leader>nc :tabnew ~/.config/nvim/init.vim <CR>

" catppuccin
colorscheme catppuccin

" lualine
source ~/.config/nvim/llineconf.lua

"undotree
map <leader>u :UndotreeToggle<CR>
set undodir=~/.local/nvim/undodir
set undofile
let g:undotree_ShortIndicators = 1
if !exists('g:undotree_WindowLayout')
  let g:undotree_WindowLayout = 4
endif
if !exists('g:undotree_SetFocusWhenToggle')
  let g:undotree_SetFocusWhenToggle = 1
endif

" nvim tree
source ~/.config/nvim/ntree.vim

" notes
source ~/.config/nvim/notes.vim

" indent
let g:indent_blankline_filetype_exclude= ["terminal", "vimwiki", "lspinfo", "packer", "checkhealth", "help","startify", "markdown", "",]
map <leader>il :IndentBlanklineToggle<CR>
hi IndentBlanklineChar guifg=#D9E0EE

" coc
source ~/.config/nvim/cocconf.vim

" vim_markdown
set conceallevel=2
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1

" bufferline
source ~/.config/nvim/bufferline.lua
nnoremap <silent> gb :BufferLinePick<CR>
nnoremap <silent> gD :BufferLinePickClose<CR>
nnoremap <silent><leader>bt :BufferLineSortByTabs<CR>
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
" highlights
hi BufferLineBufferSelected gui=bold
hi BufferLineTabSelected guifg=normal_fg

" bullets
let g:bullets_enabled_file_types = [ 'markdown' ]
let g:bullets_set_mappings = 1
"imap <silent> <C-p> <esc>:BulletDemote <CR>i
"imap <silent> <C-t> <esc>:BulletPromote <CR>i
"nmap <silent> >> :BulletDemote <CR>
"nmap <silent> << :BulletPromote <CR>
"vmap <silent> <C-p> :BulletDemoteVisual <CR>
"vmap <silent> <C-t> :BulletPromoteVisual <CR>
"map <silent> <leader>x :ToggleCheckbox <CR>
"nmap <silent> o :InsertNewBullet <CR>
"vnoremap gN :RenumberSelection<cr>
"nnoremap gN :RenumberList<cr>

" alpha
source ~/.config/nvim/alpha.lua

" telescope
source ~/.config/nvim/tele.lua
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>f/ <cmd>Telescope find_files hidden=true cwd=~<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fr <cmd>Telescope frecency<cr>
