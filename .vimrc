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
  color carvedwood
  set background=dark
  "color Solarized
  "set background=dark
else
  color zenburn
  set background=dark
endif

" Fonts
set guifont=Monaco:h12

filetype plugin indent on

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
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
map <F2> :NERDTreeToggle<CR>

" Fat finger fixes
command! -bang W w<bang>

" Comments
nmap <C-c> ^i#<esc>j
nmap <C-x> ^i-#<esc>j
nmap <C-v> ^i//<esc>j
nmap <C-z> <esc>^x

" Open up new lines w/out switching to insert mode
nmap <C-m> <esc>o<esc>

" Toggle between tabs
nmap 1 gT
nmap 0 gt
