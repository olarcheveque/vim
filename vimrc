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
Bundle 'Syntastic'


set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set laststatus=2
set statusline=%<%f%w%h%m%r\  " Filename + options
set statusline+=%P\  " position
set statusline+=%{fugitive\#statusline()} "  Git Hotness

" Mappings

" quit without saving
map  :q!

" HTML clean
map <leader>f :%s/{% /<djdiv>/g<bar>%s/ %}/<\/djdiv>/g<bar>call HtmlBeautify()<bar>%s/<djdiv>/{% /g<bar>%s/<\/djdiv>/ %}/g<cr> 

" Toggle fold
" set foldmethod=indent
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


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
Bundle 'tell-k/vim-autopep8'
Bundle 'nvie/vim-flake8'
autocmd Filetype python set ts=8 et sw=4 sts=4
autocmd BufWritePost *.py call Flake8()

" Git
Bundle 'fugitive.vim'

" Introspection
" :TagbarToggle
Bundle 'Tagbar' 

" Cleanup source
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
" set path to js-beautify file
let g:jsbeautify_file = fnameescape(fnamemodify(expand("<sfile>"), ":h")."/bundle/js-beautify/beautify.js")


" Javascript syntastic
" sudo npm install -g jshint 

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
