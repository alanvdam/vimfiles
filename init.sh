#!/bin/bash

# for the command t plugin you need to run rake make

git submodule init && \
git submodule update && \
ln -s ~/.vim/vimrc ~/.vimrc && \
cd bundle/command-t && \
rake make
