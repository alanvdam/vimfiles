call pathogen#infect()

filetype on
filetype plugin on
filetype indent on

syntax on   " Syntax highlighting on

" Display tabs and trailing spaces
set list
set listchars=tab:»·,trail:·,nbsp:·

set showmatch        " Show matching brackets
set showcmd          " Displays incomplete commands
set incsearch        " Incremental search
set autoindent       " Indents new line as previous line
set showmode         " show editing mode on the last line
set hlsearch         " highlight matching search strings
set number           " line numbers
set cpoptions+=$     " Show $ when replacing
set wildmenu         " auto completion menu
set ruler            " display cursor position
set autoread         " Automatically read file that changed on disk
set hidden           " Switch between buffers without saving
set tabstop=4        " Number of spaces for a tab
set shiftwidth=4     " Number of spaces for (auto)indent
set softtabstop=4    "
set expandtab        " Insert spaces for tab
set t_Co=256         " tell the term has 256 colors
set formatoptions-=o " Don't contiue comments when pushing o/O

let mapleader=","

" toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

" reload vimrc
nmap <silent> ,s :source $MYVIMRC<CR>

nmap <silent> ,rd :NERDTree develop<CR>
nmap <silent> ,rr :NERDTree<CR>
nmap <silent> ,rf :NERDTreeFind<CR>

nnoremap <f1> :BufExplorer<cr>
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f3> :TagbarToggle<cr>

" make <c-L> clear the highlight as well as redraw
nnoremap <C-L> :nohls<cr><C-L>
inoremap <C-L> <C-O>:nohls<cr>

" map Q to something useful
noremap Q gq

" associate *.sbt with scala filetype
au BufRead,BufNewFile *.sbt set filetype=scala
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby

" Colors
colorscheme xoria256m
set background=dark

set guioptions-=T
