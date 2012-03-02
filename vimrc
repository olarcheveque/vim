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

execute 'source' . $HOME . '/.vim/shortkeys.vim'

" Removes trailing spaces
function TrimSpaces()
    %s/\s*$//
    ''
:endfunction

