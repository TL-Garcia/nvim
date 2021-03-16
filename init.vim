"-----------------
"SETTINGS
"-----------------
set nu
set smartcase 
set shiftwidth=4
set smartindent
set colorcolumn=80
set nowrap
highlight ColorColumn ctermbg=238

" reloads file
set autoread
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime

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
"close definition preview window
let g:ycm_autoclose_preview_window_after_insertion = 1

call plug#end()


"-----------------
"THEME
"-----------------

"-----------------
"REMAPS
"-----------------
:imap kj <Esc>
let mapleader = " "

"next/previous buffer
:nnoremap <Leader>b :bn<CR>
:nnoremap <Leader>B :bp<CR>

"enable/disable spelling
:nnoremap <Leader>s :set<Space>spell<CR>
:nnoremap <Leader>S :set<Space>nospell<CR>

"enable/disable highlight 
:nnoremap <Leader>h :set hls<CR>
:nnoremap <Leader>H :nohl<CR>

"run JS files 
"NodeJS
:nnoremap <Leader>rn :!node<Space>%<CR>
"npm test script
:nnoremap <Leader>rt :!npm<Space>run<Space>test<CR>
"npm dev script
:nnoremap <Leader>rd :!npm<Space>run<Space>dev<CR>
