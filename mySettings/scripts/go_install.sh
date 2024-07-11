#!/bin/bash
# Author by Taking
# (1) go language install + env

GO_URL="https://go.dev/dl"
GO_VERSION=$(curl -s 'https://go.dev/VERSION?m=text' | head -n1)
ARCH=$(dpkg --print-architecture)
GO_FILE="$GO_VERSION.linux-$ARCH.tar.gz"

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ -d /usr/local/go ]; then
    echo -e "${RED}--go exist.. PASS--${NC}"
else
    echo -e "${RED}--go downloading...--${NC}"
    cd ~/
    wget --no-check-certificate --continue --show-progress $GO_URL/$GO_FILE
    tar -xzf $GO_FILE
    sudo mv go /usr/local
    rm ~/$GO_FILE
    
    echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee -a $HOME/.zshrc
    echo 'export GOPATH=$HOME/GO' | sudo tee -a $HOME/.zshrc
    echo 'export PATH=$PATH:$GOPATH/bin' | sudo tee -a $HOME/.zshrc

    source $HOME/.zshrc

    ## Test if Golang is working
    go version
fi
