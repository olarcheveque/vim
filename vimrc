set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" =================
" Customs & Plugins
" =================

filetype plugin indent on
syntax on
syntax enable

set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2

set laststatus=2
set statusline=%<%f%w%h%m%r\  " Filename + options
set statusline+=%P\  " position
set statusline+=%{fugitive\#statusline()} "  Git Hotness

" Mappings
map  :q!

" highlight over 80chars (>=7.3)
let &colorcolumn=join(range(81,999),",")

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
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4
autocmd BufWritePost *.py call Flake8()

" Git
Bundle 'fugitive.vim'

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
