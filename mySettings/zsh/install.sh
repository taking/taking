#!/bin/bash

###########################################
############### ZSH Setup #################
###########################################
yum install zsh -y && chsh -s `which zsh`
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
git clone https://github.com/powerline/fonts.git && ./fonts/install.sh && rm -rf ~/fonts
cd $HOME/.oh-my-zsh/custom/plugins && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && git clone https://github.com/zsh-users/zsh-autosuggestions && git clone https://github.com/djui/alias-tips.git
echo 'zsh shell install Success'
echo 'oh-my-zsh, plugins install Success'

###########################################
############## zsh setting ################
###########################################
wget -O $HOME/.zshrc 'https://gist.github.com/taking/1a03b19d580dda6376300d865b19b443/raw/8ce35f88c71b28a80d99dc2cb6410dccacdcf890/.zshrc%2520(linux)'
chsh -s `which zsh`
echo 'edit ~/.zsh'
echo 'zsh setting edit Success'