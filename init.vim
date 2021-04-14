"-----------------
"SETTINGS
"-----------------
" Numbers
set nu
set relativenumber

" Search
set smartcase 
set ignorecase

" Tabs
set shiftwidth=2
set tabstop=2
set expandtab
set smartindent

" Page margins
set colorcolumn=80
set nowrap
set scrolloff=8
highlight ColorColumn ctermbg=238

"-----------------
"NEWTRW
"-----------------
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

"-----------------
"PLUGINS
"-----------------
call plug#begin('~/.config/nvim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
"close definition preview window
let g:ycm_autoclose_preview_window_after_insertion = 1

call plug#end()

"-----------------
"REMAPS
"-----------------
:imap kj <Esc>
let mapleader = " "

"next/previous buffer
:nnoremap <Leader>b :bn<CR>
:nnoremap <Leader>B :bp<CR>

"enable/disable spelling
:nnoremap <Leader>s :set<Space>invspell<CR>

"enable/disable highlight 
:nnoremap <Leader>h :set invhls<CR>


"copy/paste from clipboard
nnoremap <Leader>y <Esc>"+y
nnoremap <Leader>Y <Esc>"+Y
nnoremap <Leader>p <Esc>"+p
nnoremap <Leader>P <Esc>"+P
vmap <Leader>y "+y

"run JS files 
"NodeJS
:nnoremap <Leader>rn :!node<Space>%<CR>
"npm test script
:nnoremap <Leader>rt :!npm<Space>run<Space>test<CR>
"npm dev script
:nnoremap <Leader>rd :!npm<Space>run<Space>dev<CR>
