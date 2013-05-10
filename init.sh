#!/bin/bash

# init submodules
git submodule init && git submodule update

# link vimrc file
[[ ! -e "~/.vim/vimrc" ]] || ln -s ~/.vim/vimrc ~/.vimrc

# for the command t plugin you need to run rake make
cd bundle/command-t && rake make

# ctags is needed by tagbar
brew install ctags

# ack is needed by Ack
brew install ack
