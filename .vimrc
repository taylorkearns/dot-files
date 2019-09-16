" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.
"
" After adding new Vundle plugins, run `~/.vim/bin/update`
" After adding new Plug plugins, open vim and run :PluginInstall

set nocompatible               " be iMproved
filetype off                   " required!

let need_to_install_plugins=0
if empty(system("grep lazy_load ~/.vim/bundle/Vundle.vim/autoload/vundle.vim"))
  echoerr "Vundle plugins are not installed. Please run ~/.vim/bin/install"
else
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin()

  Plugin 'VundleVim/Vundle.vim'

  "
  " Colorschemes
  "
  Plugin 'Colour-Sampler-Pack'
  Plugin 'alessandroyorba/sidonia'
  Plugin 'lifepillar/vim-solarized8'
  Plugin 'bcicen/vim-vice'
  Plugin 'candycode.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'molokai'
  Plugin 'morhetz/gruvbox'
  Plugin 'tpope/vim-vividchalk'
  Plugin 'wgibbs/vim-irblack'

  "
  " Other color stuff
  "
  Plugin 'Colorizer'

  "
  " Ruby / Rails
  "
  Plugin 'ecomba/vim-ruby-refactoring'
  Plugin 'jgdavey/vim-blockle'
  Plugin 'tpope/vim-endwise'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-rake'
  Plugin 'tpope/vim-rbenv'

  "
  " General Editing
  "
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'YankRing.vim'
  Plugin 'brysgo/quickfixfix'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'ervandew/supertab'
  Plugin 'godlygeek/tabular'
  Plugin 'kien/rainbow_parentheses.vim'
  Plugin 'matt-royal/diffthese'
  Plugin 'nertzy/edit-plus'
  Plugin 'nertzy/j-split'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'tomtom/tlib_vim'
  Plugin 'tpope/vim-projectionist'
  Plugin 'tpope/vim-repeat'
  Plugin 'tpope/vim-surround'
  Plugin 'tpope/vim-unimpaired'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'vim-scripts/L9'
  Plugin 'w0rp/ale'

  "
  " Window Management
  "
  Plugin 'ZoomWin'

  "
  " Searching
  "
  Plugin 'epmatsw/ag.vim'
  Plugin 'kien/ctrlp.vim'

  "
  " Navigation
  "
  Plugin 'scrooloose/nerdtree'

  "
  " Languages
  "
  Plugin 'briancollins/vim-jst'
  Plugin 'chrisbra/csv.vim'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'elzr/vim-json'
  Plugin 'fatih/vim-go'
  Plugin 'guns/vim-clojure-static'
  Plugin 'juvenn/mustache.vim'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'lambdatoast/elm.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'mxw/vim-jsx'
  Plugin 'nono/vim-handlebars'
  Plugin 'pangloss/vim-javascript'
  Plugin 'peitalin/vim-jsx-typescript'
  Plugin 'quentindecock/vim-cucumber-align-pipes'
  Plugin 'rosstimson/scala-vim-support'
  Plugin 'slim-template/vim-slim'
  Plugin 'tpope/vim-cucumber'
  Plugin 'tpope/vim-haml'
  Plugin 'vim-ruby/vim-ruby'

  "
  " Development Tool Integration
  "
  Plugin 'sjl/vitality.vim'
  Plugin 'tpope/vim-fugitive'

  call vundle#end()

  "
  " Plug plugins
  "
  call plug#begin('~/.vim/plugged')

  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

  call plug#end()

  filetype plugin indent on

  syntax on

  runtime! init/**.vim

  if filereadable($HOME . "/.vimrc.local")
    source ~/.vimrc.local
  endif
endif

