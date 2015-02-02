" Extra runtime paths for plugins
set runtimepath+=$HOME/.vim/vim-haml

" Use Vim instead of Vi settings
set nocompatible

let mapleader = ","

call pathogen#infect()

" Sounds
set vb

" Colors
syntax on
set t_Co=256

if has('gui_running')
  " Light color scheme
  "color pyte
  "set background=light
  " Dark color scheme
  color twilight
  set background=dark
else
  color zenburn
endif

" Fonts
set guifont=SimHei:h18

filetype plugin indent on

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
" Light color scheme
"highlight Search guibg=pink guifg=white
"highlight incsearch guibg=NONE guifg=pink
" Dark color scheme
highlight Search guibg=NONE guifg=pink gui=underline
highlight incsearch guibg=NONE guifg=pink
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Search hidden files
set hidden

" Line numbers
set number
highlight LineNr guifg='#444444' guibg=NONE

" Whitespace
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set list listchars=tab:\ \ ,trail:·

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Clear trailing spaces
nnoremap <silent> <space><space> :silent! %s/\s\+$//g<CR>

" Easier escape key
inoremap jf <esc>
inoremap Jf <esc>

" Remove backup and swap files
set nobackup
set nowritebackup
set noswapfile

" NERDTree
let NERDTreeShowHidden=0
let NERDTreeWinSize=60
map <F2> :NERDTreeToggle<CR>

" Fat finger fixes
command! -bang W w<bang>

" Open up new lines w/out switching to insert mode
nmap <C-m> <esc>o<esc>

" Slim syntax for emblem.js"
au BufNewFile,BufRead *.emblem set filetype=slim

" Lusty
let g:LustyExplorerSuppressRubyWarning = 1
let g:LustyJugglerSuppressRubyWarning = 1
