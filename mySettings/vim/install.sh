#!/bin/bash

###########################################
############## vim Setting ################
###########################################
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
mkdir $HOME/.vim/colors/
curl -G https://raw.githubusercontent.com/ErichDonGubler/vim-sublime-monokai/master/colors/sublimemonokai.vim -o $HOME/.vim/colors/sublimemonokai.vim
wget -O $HOME/.vimrc https://gist.github.com/taking/2d762c0d0a63120ace2fa3b87bf262e5/raw/bcf8e9c29730d20459d9f458d8af7361f2fba9b8/.vimrc
vim +PluginInstall +qall