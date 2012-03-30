set t_Co=256

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set textwidth=79

filetype on
filetype plugin indent on

syntax on
syntax enable
set background=dark
colorscheme solarized


execute 'source' . $HOME . '/.vim/shortkeys.vim'

" Removes trailing spaces
function TrimSpaces()
    %s/\s*$//
    ''
:endfunction

