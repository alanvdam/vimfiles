call pathogen#infect()

filetype on
filetype plugin on
filetype indent on

syntax on   " Syntax highlighting on

" Display tabs and trailing spaces
set list
set listchars=tab:»·,trail:·,nbsp:·

set showcmd          " Displays incomplete commands
set autoindent       " Indents new line as previous line
set showmode         " show editing mode on the last line
"set relativenumber   " relative line numbers
set number
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
set encoding=utf-8
set showmatch        " Show matching brackets
set incsearch        " Incremental search
set hlsearch         " highlight matching search strings
set ignorecase
set smartcase
set visualbell       " Don't beep
set noerrorbells     " Don't beep

set laststatus=2
if has('statusline')
    set statusline=%<%f\                                   " Filename
    set statusline+=%w%h%m%r                               " Options
    set statusline+=%{fugitive#statusline()}               " Git Hotness
    set statusline+=\ [%Y]                                 " filetype
    set statusline+=\ [%{getcwd()}]                        " current dir
    set statusline+=%=%-14.(line\ %l\ of\ %L\ -\ col\ %c%) " Right aligned file nav info
endif

let mapleader=","

" toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

" reload vimrc
nmap <silent> ,s :source $MYVIMRC<CR>
nmap <silent> ,e :e $MYVIMRC<CR>

nmap <silent> ,rd :NERDTree develop<CR>
nmap <silent> ,rr :NERDTree<CR>
nmap <silent> ,rf :NERDTreeFind<CR>

nnoremap <f1> :BufExplorer<cr>
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f3> :TagbarToggle<cr>

" make <c-L> clear the highlight as well as redraw
nnoremap <C-L> :nohls<cr><C-L>
inoremap <C-L> <C-O>:nohls<cr>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee % > /dev/null

" map Q to something useful
noremap Q gq

" associate *.sbt with scala filetype
au BufRead,BufNewFile *.sbt set filetype=scala
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile Gemfile set filetype=ruby

" Colors
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme wombat
"colorscheme xoria256m

set guioptions-=T
