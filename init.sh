#!/bin/bash

git submodule init && git submodule update                  # init submodules
[[ -e ~/.vimrc ]] || ln -s ~/.vim/vimrc ~/.vimrc            # link vimrc file
vim +BundleInstall +qall
type rake &> /dev/null && cd bundle/Command-T && rake make  # for the command t plugin you need to run rake make
type brew &> /dev/null && brew install ctags                # ctags is needed by tagbar
type brew &> /dev/null && brew install ack                  # ack is needed by Ack
type brew &> /dev/null && brew install reattach-to-user-namespace
