#!/bin/bash

git submodule init && git submodule update                       # init submodules
[[ ! -e "~/.vim/vimrc" ]] || ln -s ~/.vim/vimrc ~/.vimrc         # link vimrc file
[[ type rake &> /dev/null ]] || cd bundle/command-t && rake make # for the command t plugin you need to run rake make
[[ type brew &> /dev/null ]] || brew install ctags               # ctags is needed by tagbar
[[ type brew &> /dev/null ]] || brew install ack                 # ack is needed by Ack
