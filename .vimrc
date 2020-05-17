set nocompatible              " be iMproved, required

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=/usr/local/opt/fzf

call plug#begin()

" let Vundle manage Vundle, required
"Plug 'VundleVim/Vundle.vim'

"vim-tmux
"Plug 'benmills/vimux'
"Plug 'christoomey/vim-tmux-navigator'
"Plug 'edkolev/tmuxline.vim'

"autoformat
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

"Autocomplete
"Plug 'rdnetto/YCM-Generator'
"Plug 'Valloric/YouCompleteMe'
"Plug 'zxqfl/tabnine-vim'
"Plug 'klen/python-mode'

"onedark colorscheme
Plug 'joshdick/onedark.vim'

"git interface
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"filesystem
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/The-NERD-tree'
Plug 'Xuyuanp/nerdtree-git-plugin'

"buffer tab bar
Plug 'ap/vim-buftabline'

"tagbar
Plug 'majutsushi/tagbar'

"tpope plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-scriptease'

"Plug 'kien/ctrlp.vim'
"Plug 'junegunn/fzf.vim'

"html
"  isnowfy only compatible with python not python3
"Plug 'isnowfy/python-vim-instant-markdown'
"Plug 'suan/vim-instant-markdown', {'rtp': 'after'}

" syntax
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'  " syntax highlighting

" Python sytax checker
"Plug 'vim-scripts/Pydiction'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'tell-k/vim-autopep8'

"code folding
Plug 'tmhedberg/SimpylFold'

"pandoc/markdown
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'JamshedVesuna/vim-markdown-preview'

"GOOGLE STYLEGUIDE
" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
"Plug 'google/vim-maktaba'
"Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
"Plug 'google/vim-glaive'

"LaTeX editing
"Plug 'lervag/vimtex'

"JSON highlighting
"Plug 'elzr/vim-json'

"ReactJS highlighting
Plug 'pangloss/vim-javascript'

"statusline in vim
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'  " lighter version of above

"C++ linting
"Plug 'dense-analysis/ale'
"C++
Plug 'octol/vim-cpp-enhanced-highlight'


" All of your Plugins must be added before the following line
call plug#end()            " required

" the glaive#Install() should go after the call vundle#end()
"call glaive#Install()
filetype plugin indent on    " required

" set mouse enabled for visual mode
set mouse=a

" tagbar setup
nmap <F8> :TagbarToggle<CR>

" set the colortheme based on the terminal
syntax on
" if $TERM == 'ansi'
" 	set t_Co=256
" 	let g:solarized_termtrans=1
" 	let g:solarized_termcolors=256
" 	let g:solarized_visibility='normal'
" 	let g:solarized_contrast='normal'
" endif
" " disable the Background Color Erase that messes with some color schemes
" set t_ut=
" set background=dark
" " set the terminal colors correctly using provided script
" silent exec !sh ~/.vim/pack/themes/opt/solarized8/scripts/solarized8.sh
" colorscheme solarized8

" onedark configuration
let g:lightline = {
\ 'colorscheme': 'onedark',
\ }
let g:airline_theme='onedark'
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=0
colorscheme onedark

" https://github.com/alz2/dotfiles/blob/master/.vimrc
set number
set cursorline

" syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-gitgutter statusline
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}

" auto format code via Google's formatter
"augroup autoformat_settings
"	autocmd FileType bzl AutoFormatBuffer buildifier
"	"autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
"	autocmd FileType dart AutoFormatBuffer dartfmt
"	autocmd FileType go AutoFormatBuffer gofmt
"	autocmd FileType gn AutoFormatBuffer gn
"	autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
"	autocmd FileType java AutoFormatBuffer google-java-format
"	autocmd FileType python AutoFormatBuffer yapf
"	autocmd FileType python AutoFormatBuffer autopep8
"	autocmd FileType vue AutoFormatBuffer prettier
"augroup END

" YouCompleteMe
" Start autocompletion after 4 chars
"let g:ycm_min_num_of_chars_for_completion=4
"let g:ycm_min_num_identifier_candidate_chars=4
"let g:ycm_enable_diagnostic_highlighting=0
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_auto_trigger=0
"let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
"let g:pydiction_location='~/.vim/bundle/pydiction/complete-dict'
"let g:ycm_server_use_vim_stdout=1
"let g:ycm_server_keep_logfiles=1
"let g:ycm_server_log_level='debug'
"let g:ycm_path_to_python_interpreter='/usr/bin/python'
"let g:ycm_server_python_interpreter='/usr/bin/python'

" don't conceal in MD
let g:pandoc#syntax#conceal#use = 0

" nerdTree
" open NERDTree if no files open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" close NERDTree if its the last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

set foldlevel=99

" markdown preview on write
"let vim_markdown_preview_toggle=2
"let vim_markdown_preview_browser='Google Chrome'

"statusline for vim
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Ctrl-P
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

" Long undo in files
set history=1000
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"https://www.bugsnag.com/blog/tmux-and-vim
" vv to generate new vertical split
nnore map <silent> vv <C-w>v

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Speed up matchparen when scrolling through large files
let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2

" ALE linters
"let g:ale_linters = {'cpp': ['ccls', 'clang', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'cpplint', 'cquery', 'flawfinder', 'gcc']}
"let g:ale_linters = {'cpp': ['ccls', 'clang', 'clangcheck', 'clangd', 'clangtidy', 'clazy', 'cppcheck', 'flawfinder']}
"let g:ale_c_clangtidy_checks = ['-*', 'cppcoreguidelines-*']
"let g:ale_fixers = {'cpp': ['clang-format', 'clangtidy', 'remove_trailing_lines', 'trim_whitespace', 'uncrustify']}
"let g:ale_fixers = {'cpp': ['remove_trailing_lines', 'trim_whitespace', 'uncrustify']}

"------------General Style--------------------------
" Trailing tabs
au BufRead,BufNewFile * match BadWhitespace /^	\+/
" Trailing whitespace
au BufRead,BufNewFile * match BadWhitespace /\s\+$/
"------------End general style----------------------

"------------Start MIPS Assembly Style--------------
au BufRead,BufNewFile *.v,*.s set tabstop=4
au BufRead,BufNewFile *.v,*.s set shiftwidth=4
au BufRead,BufNewFile *.v,*.s set expandtab
au BufRead,BufNewFile *.v,*.s set softtabstop=4
"------------End MIPS Assembly Style----------------

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
" Draw line at col 79 to show text wrap limit
au BufRead,BufNewFile *.py,*.pyw set colorcolumn=79

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
