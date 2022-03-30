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
set encoding=utf-8
set showmatch
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
filetype plugin indent on
syntax on
set clipboard=unnamedplus
filetype plugin on
set cursorline
map <leader><leader> :setlocal spell! spelllang=en_us<CR>
autocmd FileType * setlocal formatoptions-=cro
" filetypes
autocmd BufRead,BufNewFile ~/personal/school/* set filetype=markdown
autocmd BufWritePre * %s/\s\+$//e
" movement
map <silent> <leader>h :wincmd h<CR>
map <silent> <leader>j :wincmd j<CR>
map <silent> <leader>k :wincmd k<CR>
map <silent> <leader>l :wincmd l<CR>
map <silent> <leader>q :quit<CR>
map <silent> <leader>Q :quit!<CR>
map <silent> <leader>bq :bd<CR>
nmap <silent> tt :bnext<CR>
nmap <silent> tT :bprevious<CR>
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
map <silent> <leader>nn :noh<CR>
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

" nvim tree
set termguicolors
source ~/.config/nvim/ntree.lua
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
let g:nvim_tree_group_empty = 1 " 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_icon_padding = ' ' "one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_symlink_arrow = ' >> ' " defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_respect_buf_cwd = 1 "0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_create_in_closed_folder = 1 "0 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
let g:nvim_tree_icons = {
    \ 'default': "",
    \ 'symlink': "",
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }
highlight NvimTreeNormal guibg=none
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>nf :NvimTreeFindFile<CR>

" vim-lastplace
lua require'nvim-lastplace'.setup{}
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_ignore_filetype = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_open_folds = 1

" notes
source ~/.config/nvim/notes.vim

" indent
let g:indent_blankline_filetype_exclude= ["terminal", "vimwiki", "lspinfo", "packer", "checkhealth", "help","startify", "markdown", "",]
map <leader>il :IndentBlanklineToggle<CR>

" coc
source ~/.config/nvim/cocconf.vim

" vim_markdown
set conceallevel=2
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1

" barbar
nnoremap <silent> <leader>1 :BufferGoto 1<CR>
nnoremap <silent> <leader>2 :BufferGoto 2<CR>
nnoremap <silent> <leader>3 :BufferGoto 3<CR>
nnoremap <silent> <leader>4 :BufferGoto 4<CR>
nnoremap <silent> <leader>5 :BufferGoto 5<CR>
nnoremap <silent> <leader>6 :BufferGoto 6<CR>
nnoremap <silent> <leader>7 :BufferGoto 7<CR>
nnoremap <silent> <leader>8 :BufferGoto 8<CR>
nnoremap <silent> <leader>9 :BufferLast<CR>
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '+'
let bufferline.icon_pinned = '車'
map <silent> <leader>bo :BufferOrderByBufferNumber<CR>
source ~/.config/nvim/tree.lua

" bullets
let g:bullets_enabled_file_types = [ 'markdown' ]
let g:bullets_set_mappings = 0
imap <silent> <C-p> <esc>:BulletDemote <CR>i
imap <silent> <C-t> <esc>:BulletPromote <CR>i
nmap <silent> >> :BulletDemote <CR>
nmap <silent> << :BulletPromote <CR>
vmap <silent> <C-p> :BulletDemoteVisual <CR>
vmap <silent> <C-t> :BulletPromoteVisual <CR>
map <silent> <leader>x :ToggleCheckbox <CR>
nmap <silent> o :InsertNewBullet <CR>
