set t_Co=256
let g:solarized_termcolors=256
set pastetoggle=<F2>


call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

autocmd BufWritePost *.py call Flake8()

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

let g:omni_sql_no_default_maps = 1

execute 'source' . $HOME . '/.vim/shortkeys.vim'

" Removes trailing spaces
function TrimSpaces()
    %s/\s*$//
    ''
:endfunction

