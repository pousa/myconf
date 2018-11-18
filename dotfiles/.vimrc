set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'Solarized'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Bundle 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'

" Now we can turn our filetype functionality back on
filetype plugin indent on

syntax on
set nobackup            " do not keep a backfup file
set ruler               " show the cursor position all the time
set laststatus=2        " always show the statusline
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set number              " show line numbers all the time

set encoding=utf-8

"ensures that the auto-complete window goes away 
let g:ycm_autoclose_preview_window_after_completion=1
"just shotcut for definition
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set t_Co=16
set background=dark
colorscheme solarized
highlight BadWhitespace ctermbg=red guibg=red

let g:go_highlight_functions = 1 
let g:go_highlight_methods = 1 
let g:go_highlight_fields = 1 
let g:go_highlight_types = 1 
let g:go_highlight_operators = 1 
let g:go_highlight_build_constraints = 1

" Makefile
au BufRead,BufNewFile Makefile* set noexpandtab

"C
au BufRead,BufNewFile *.c,*.h set expandtab
au BufRead,BufNewFile *.c,*.h set tabstop=4
au BufRead,BufNewFile *.c,*.h set shiftwidth=4
au BufRead,BufNewFile *.c,*.h set autoindent
au BufRead,BufNewFile *.c,*.h match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.c,*.h match BadWhitespace /\s\+$/
au         BufNewFile *.c,*.h set fileformat=unix
au BufRead,BufNewFile *.c,*.h let b:comment_leader = '/* '

"Python
let python_highlight_all=1
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.pyw set textwidth=139
au BufRead,BufNewFile *.py,*.pyw set tabstop=4
au BufRead,BufNewFile *.py,*.pyw set softtabstop=4
au BufRead,BufNewFile *.py,*.pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set autoindent
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/
au         BufNewFile *.py,*.pyw set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw let b:comment_leader = '#'


"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF


set term=xterm
set pastetoggle=<F2>
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
