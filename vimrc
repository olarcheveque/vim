set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" =======
" Plugins
" =======

filetype plugin indent on
syntax on
syntax enable

" Color and Scheme
Bundle 'Solarized'
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" custom Shortcuts
Bundle 'snipMate'

" Python
Bundle 'nvie/vim-flake8'
autocmd BufWritePost *.py call Flake8()


"
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
