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
Plugin 'greyblake/vim-preview'
Plugin 'derekwyatt/vim-scala'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'bling/vim-airline'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tpope/vim-fugitive'
Plugin 'groenewege/vim-less'
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rking/ag.vim'

call vundle#end()

filetype plugin indent on
