#!/bin/bash

oh-my-zsh_folder="$HOME/.oh-my-zsh/"

if [ -d "$oh-my-zsh_folder" ]; then
  echo "oh-my-zsh Exists"
else
  echo "oh-my-zsh Installing"
  curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
  git clone https://github.com/powerline/fonts.git && ./fonts/install.sh && rm -rf ~/fonts

  cd $HOME/.oh-my-zsh/custom/plugins
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && \
  git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions && \
  git clone https://github.com/djui/alias-tips.git $HOME/.oh-my-zsh/custom/plugins/alias-tips

  cat <<'EOF' > $HOME/.zshrc
export ZSH=$HOME/.oh-my-zsh
DEFAULT_USER="$USER"
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions alias-tips)

source $ZSH/oh-my-zsh.sh

alias dc='cd'
alias cls='clear'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ll='ls -lh'
alias fsize='du -hsx * | sort -rh | head -n 10'
alias dh='df -h -x tmpfs -x devtmpfs -x squashfs'
alias ttfb='curl -so /dev/null -w "HTTP %{http_version} %{http_code} Remote IP: %{remote_ip}\nConnect: %{time_connect}\nTTFB: %{time_starttransfer}\nTotal time: %{time_total}\nDownload speed: %{speed_download}bps\nBytes: %{size_download}\n"'

# NeoVim settings
# export EDITOR=/bin/nvim
alias vi="nvim"
alias vim="nvim"
alias vimdiff="nvim -d"

HISTTIMEFORMAT="[%d.%m.%y] %T   "
export HISTSIZE=10000
export HISTTIMEFORMAT

# Git Username/Email
git config --global user.name "taking"
git config --global user.email "taking@duck.com"

# Git Logs
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.lga "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"

case $TERM in (xterm*)
bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line
esac
EOF
fi
