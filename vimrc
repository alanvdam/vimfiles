set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-sensible'
Plugin 'wincent/Command-T'
Plugin 'altercation/vim-colors-solarized'
Plugin 'gregsexton/MatchTag'
Plugin 'mileszs/ack.vim'
Plugin 'greyblake/vim-preview'
Plugin 'derekwyatt/vim-scala'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'

"Plugin 'airblade/vim-gitgutter'
"Plugin 'tpope/vim-fugitive'
"Plugin 'vim-scripts/YankRing.vim'
"Plugin 'godlygeek/csapprox'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'groenewege/vim-less'
"Plugin 'SirVer/ultisnips'

call vundle#end()

filetype plugin indent on
syntax on   " Syntax highlighting on

" Display tabs and trailing spaces
set list
set listchars=tab:»·,trail:·,nbsp:·

set showmode         " show editing mode on the last line
set number           " show line numbers
set cpoptions+=$     " Show $ when replacing
set hidden           " Switch between buffers without saving
set tabstop=2        " Number of spaces for a tab
set shiftwidth=2     " Number of spaces for (auto)indent
set softtabstop=2    "
set expandtab        " Insert spaces for tab
set t_Co=256         " tell the term has 256 colors
set formatoptions-=o " Don't contiue comments when pushing o/O
set encoding=utf-8
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
let g:gitgutter_enabled = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1

" toggle paste mode
nnoremap <leader>p :set invpaste<CR>:set paste?<CR>

" reload vimrc
nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>e :e $MYVIMRC<CR>

nnoremap <leader>xf :% !xmllint --format -<CR>

" remove trailing spaces
nnoremap <leader>rs :%s/\s\+$<CR>

nnoremap <silent> <leader>f :NERDTreeFind<CR>

nnoremap <f1> :NERDTreeToggle<cr>
nnoremap <f2> :BufExplorer<cr>
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

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

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
