"------------------
" Load plugins
"------------------

call plug#begin('~/local/share/nvim/plugged')

    Plug 'neoclide/coc.nvim',
	Plug 'tpope/vim-endwise'
	Plug 'rstacruz/vim-closer'

call plug#end()

"------------------
" Syntax and indent
"------------------

syntax on " turn on syntax highlighting
set showmatch " show matching braces when text indicator is over them

filetype plugin indent on " enable file type detection
set autoindent

"---------------------
" Basic editing config
"---------------------
set clipboard=unnamedplus " use system clipboard by default (vimx, gvim -v, mvim -v)
set shortmess+=I " disable startup message
set nu " number lines
set rnu " relative line numbering
set incsearch " incremental search (as string is being typed)
set hls " highlight search
set scrolloff=10 " show lines above and below cursor (when possible)
set laststatus=2
set backspace=indent,eol,start " allow backspacing over everything
set timeout timeoutlen=1000 ttimeoutlen=100 " fix slow O inserts
set autochdir " automatically set current directory to directory of last opened file
set hidden " allow auto-hiding of edited buffers
set history=8192 " more history
set nojoinspaces " suppress inserting two spaces between sentences
set tabstop=4
set shiftwidth=4
set softtabstop=4
" smart case-sensitive search
set ignorecase
set smartcase
" tab completion for files/buffers
set wildmode=longest,list
set wildmenu

" use undo
set undodir=~/.vim/undodir
set undofile

"---------------------
" Configuration
"--------------------- 

" *.{tpp,txx} is also a C++ file.
autocmd BufRead,BufNewFile *.tpp setlocal filetype=cpp
autocmd BufRead,BufNewFile *.txx setlocal filetype=cpp
"autocmd BufNew,BufEnter *.c,*.C,*.cpp,*.cxx,*.h,*.hpp,*.hxx,*.tpp,*.txx,*.S,*.s,*.asm
"autocmd BufLeave        *.c,*.C,*.cpp,*.cxx,*.h,*.hpp,*.hxx,*.tpp,*.txx,*.S,*.s,*.asm

source ~/.dotfiles/.cocrc
