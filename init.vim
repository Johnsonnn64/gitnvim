"                          _
"   ____  ___  ____ _   __(_)___ ___
"  / __ \/ _ \/ __ \ | / / / __ `__ \
" / / / /  __/ /_/ / |/ / / / / / / /
"/_/ /_/\___/\____/|___/_/_/ /_/ /_/
"

" settings
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
nmap <CR> o<Esc>
"nmap <S-CR> i<CR><Esc>
nmap <S-CR> O<Esc>
" edit config
map <silent> <leader>np :tabnew ~/.config/nvim/plugins.vim <CR>
map <silent> <leader>nc :tabnew ~/.config/nvim/init.vim <CR>

" catppuccin
colorscheme catppuccin

" lualine
lua << END
require('lualine').setup {
  options = {
    globalstatus = true,
  },
}
END

" tabline
lua << END
  require'tabline'.setup {
    -- Defaults configuration options
    enable = true,
    options = {
    -- If lualine is installed tabline will use separators configured in lualine by default.
    -- These options can be used to override those settings.
      section_separators = {'', ''},
      component_separators = {'', ''},
      max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
      show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
      show_devicons = true, -- this shows devicons in buffer section
      show_bufnr = false, -- this appends [bufnr] to buffer section,
      show_filename_only = true, -- shows base filename only instead of relative path in filename
      modified_icon = "+ ", -- change the default modified icon
      modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
    }
  }
  vim.cmd[[
    set guioptions-=e " Use showtabline in gui vim
    set sessionoptions+=tabpages,globals " store tabpages and globals in session
  ]]
END
map <silent>tt :TablineBufferNext<CR>
map <silent>tT :TablineBufferPrevious<CR>

"undotree
map <leader>u :UndotreeToggle<CR>
set undodir=~/.local/nvim/undodir
set undofile
let g:undotree_ShortIndicators = 1

" nerdtree
nnoremap <leader>f :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode = "l"
let g:NERDTreeMapChangeRoot= "L"
let g:NERDTreeMapOpenInTab = "tt"
let g:NERDTreeMapOpenSplit= "ss"
let g:NERDTreeMapOpenVSplit= "vv"
let NERDTreeWinPos="right"
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeStatusline=-1
let NERDTreeShowLineNumbers=1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" vim-lastplace
lua require'nvim-lastplace'.setup{}
let g:lastplace_ignore_buftype = "quickfix,nofile,help"
let g:lastplace_ignore_filetype = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_open_folds = 1

" make my own vimwiki


" indent
let g:indent_blankline_filetype_exclude= ["terminal", "vimwiki", "lspinfo", "packer", "checkhealth", "help","startify", "markdown", "",]
map <leader>il :IndentBlanklineToggle<CR>

" coc
set cmdheight=2
function! s:cgeck_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-tsserver', 'coc-sh', 'coc-snippets', 'coc-clangd', 'coc-prettier', 'coc-json']
inoremap <silent><expr><TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> ga <Plug>(coc-rename)
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" vim_markdown
set conceallevel=2
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_folding_disabled = 1
