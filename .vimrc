" Use Vim instead of Vi settings
set nocompatible

let mapleader = ","

call pathogen#infect()

" Sounds
set vb

" Colors
set t_Co=256
set background=light
syntax on
color Solarized
filetype plugin indent on
highlight Search cterm=bold,underline guibg=NONE ctermbg=NONE ctermfg=Yellow

" Search hidden files
set hidden

" Highlight search
set hlsearch

" Line numbers
set number

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

" Remove backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Key mappings
map <F2> :NERDTreeToggle<CR>

" NERDTree
let NERDTreeShowHidden=1

" Fat finger fixes
command! -bang W w<bang>

" SmartInput
" call smartinput#map_to_trigger('i', '#', '#', '#')
" call smartinput#define_rule({
" \   'at': '\%#',
" \   'char': '#',
" \   'input': '#{   }<Left>',
" \   'filetype': ['ruby'],
" \   'syntax': ['Constant', 'Special'],
" \ })

" call smartinput#define_rule({
" \   'at': '\({\|\<do\>\)\s*\%#',
" \   'char': '<Bar>',
" \   'input': '<Bar><Bar><Left>',
" \   'filetype': ['ruby'],
" \ })
