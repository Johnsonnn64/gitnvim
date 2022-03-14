"                          _
"   ____  ___  ____ _   __(_)___ ___
"  / __ \/ _ \/ __ \ | / / / __ `__ \
" / / / /  __/ /_/ / |/ / / / / / / /
"/_/ /_/\___/\____/|___/_/_/ /_/ /_/
"

" plugins
source $HOME/.config/nvim/plugins.vim
let mapleader=" "
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
map <leader>s : setlocal spell! spelllang=en_us<CR>
autocmd FileType * setlocal formatoptions-=cro
" movement
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
map <leader>q :quit<CR>

" catppuccin
colorscheme catppuccin

" lualine
lua << END
require('lualine').setup ()
END

"Undotree
map <leader>u :UndotreeToggle<CR>
set undodir=~/.local/nvim/undodir
set undofile

" rnvimr
map <leader>f :RnvimrToggle<CR>
tnoremap <silent> <leader>f <C-\><C-n>:RnvimrToggle<CR>
tnoremap <silent> <leader>r <C-\><C-n>:RnvimrResize<CR>
let g:rnvimr_enable_ex = 1
"let g:rnvimr_draw_border = 0
let g:rnvimr_hide_gitignore = 1

" vim-lastplace
lua require'nvim-lastplace'.setup{}
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_ignore_filetype = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_open_folds = 1

" vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki'}]
let g:vimwiki_list = [{'auto_diary_index': 1}]
map <leader>wa :e ~/vimwiki/anime.wiki<CR>
" taskwiki
let g:taskwiki_dont_preserve_folds='yes'  
let g:taskwiki_dont_fold="yes"
let g:taskwiki_disable_concealcursor='yes'
let g:taskwiki_taskrc_location="~/.config/task/taskrc"

" indent
let g:indent_blankline_filetype_exclude= ["terminal", "vimwiki", "lspinfo", "packer", "checkhealth", "help", "",]
map <leader>il :IndentBlanklineToggle<CR>

" ctrlP
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_by_filename=1
let g:ctrlp_dotfiles = 1
map <leader>p :CtrlP ~<CR>
