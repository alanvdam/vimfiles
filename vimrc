set nocompatible     " No vi anymore
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/delimitMate.vim'
Bundle 'vim-scripts/IndexedSearch'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'wincent/Command-T'
Bundle 'airblade/vim-gitgutter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'gregsexton/MatchTag'
Bundle 'mileszs/ack.vim'
Bundle 'greyblake/vim-preview'
Bundle 'derekwyatt/vim-scala'
Bundle 'godlygeek/csapprox'
Bundle 'majutsushi/tagbar'
Bundle 'vim-ruby/vim-ruby'
Bundle 'groenewege/vim-less'
Bundle 'SirVer/ultisnips'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'bling/vim-airline'

filetype plugin indent on
syntax on   " Syntax highlighting on

" Display tabs and trailing spaces
set list
set listchars=tab:»·,trail:·,nbsp:·

set showcmd          " Displays incomplete commands
set autoindent       " Indents new line as previous line
set showmode         " show editing mode on the last line
set number           " show line numbers
set cpoptions+=$     " Show $ when replacing
set wildmenu         " auto completion menu
set ruler            " display cursor position
set autoread         " Automatically read file that changed on disk
set hidden           " Switch between buffers without saving
set tabstop=2        " Number of spaces for a tab
set shiftwidth=2     " Number of spaces for (auto)indent
set softtabstop=2    "
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
set splitbelow       " Opens new split below
set splitright       " Opens new vsplit right"

let mapleader=","
let g:yankring_history_dir = '$HOME/.vim'

" toggle paste mode
nnoremap <leader>p :set invpaste<CR>:set paste?<CR>

" reload vimrc
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>e :e $MYVIMRC<CR>

nnoremap <silent> <leader>f :NERDTreeFind<CR>

nnoremap <f1> :BufExplorer<cr>
nnoremap <f2> :NERDTreeToggle<cr>
nnoremap <f3> :BufExplorerHorizontalSplit<cr>
nnoremap <f4> :TagbarToggle<cr>
nnoremap <f5> :YRShow<cr>

" make <c-L> clear the highlight as well as redraw
nnoremap <C-S> :nohls<cr>
inoremap <C-S> <C-O>:nohls<cr>

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

set laststatus=2
let g:airline_powerline_fonts=1

set guioptions-=T

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
