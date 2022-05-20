-- :help options

local options = {
  lazyredraw = true,
  backup = false,                          -- creates a backup file
  clipboard = 'unnamedplus',               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { 'menuone', 'noselect' }, -- mostly just for cmp
  conceallevel = 1,                        -- so that `` is visible in markdown files
  fileencoding = 'utf-8',                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  showmatch = true,                        -- show matching while searching
  incsearch = true,                        -- idk just good
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 500,                       -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  autoindent = true,                       -- auto indent
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = 'yes',                      -- always show the sign column, otherwise it would shift the text each time
  hidden = true,                           -- for some plugin
  guifont = 'monospace:h17',               -- the font used in graphical neovim applications
  linebreak = true                         -- break words at the end of line
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.shortmess:append 'c'
-- autocmd BufWritePre * %s/\s\+$//e

vim.cmd [[
  autocmd BufRead,BufNewFile ~/personal/school/* set filetype=markdown
  autocmd BufRead,BufNewFile ~/.local/share/calcurse/notes/* set filetype=markdown
  let g:vim_markdown_new_list_itme_indent = 2
  let g:vim_markdown_folding_disabled = 1
  set whichwrap+=<,>,[,],h,l
  autocmd FileType markdown syntax off 
  autocmd FileType markdown set nocursorline
  autocmd BufEnter * set formatoptions-=cro
]]
