" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

"git interface
Plugin 'tpope/vim-fugitive'
" filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

"html
"  isnowfy only compatible with python not python3
"Plugin 'isnowfy/python-vim-instant-markdown'
"Plugin 'jtratner/vim-flavored-markdown'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'nelstrom/vim-markdown-preview'
" Python sytax checker
Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'

"auto-completion stuff
Plugin 'klen/python-mode'
"Plugin 'klen/rope-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
"code folding
"Plugin 'tmhedberg/SimpylFold'

"C++
Plugin 'octol/vim-cpp-enhanced-highlight'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append  to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append  to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append  to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set background=dark
colorscheme solarized

" https://github.com/alz2/dotfiles/blob/master/.vimrc
set number
set cursorline

syntax enable

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_auto_trigger = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

let g:airline#extensions#tabline#enabled = 1

" don't conceal in MD
let g:pandoc#syntax#conceal#use = 0

" nerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

map <C-n> :NERDTreeToggle<CR>

set foldlevel=99

"------------Start C++ Google Style Guide------------
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1

au BufRead,BufNewFile *.hpp,*.cpp,*.h set tabstop=2
au BufRead,BufNewFile *.hpp,*.cpp,*.h set shiftwidth=2
au BufRead,BufNewFile *.hpp,*.cpp,*.h set expandtab
au BufRead,BufNewFile *.hpp,*.cpp,*.h set softtabstop=2

au BufNewFile *.hpp,*.cpp,*.h set fileformat=unix

" Trailing tabs
au BufRead,BufNewFile *.hpp,*.cpp,*.h match BadWhitespace /^	\+/
" Trailing whitespace
au BufRead,BufNewFile *.hpp,*.cpp,*.h match BadWhitespace /\s\+$/

" Line width
au BufRead,BufNewFile *.hpp,*.cpp,*.h set textwidth=79
au BufRead,BufNewFile *.hpp,*.cpp,*.h set colorcolumn=79

" Makefile
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" folding based on indents
autocmd FileType cpp set foldmethod=indent

" Keep indentation level from previous line:
autocmd FileType cpp set cindent

" make backspaces more powerful
set backspace=indent,eol,start
"------------End C++ Stuff--------------------------



"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^	\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw set textwidth=99

" Use UNIX line endings.
au BufNewFile *.py,*.pyw set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start


"Folding based on indentation:
autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za 
"----------Stop python PEP 8 stuff--------------

"js stuff
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
