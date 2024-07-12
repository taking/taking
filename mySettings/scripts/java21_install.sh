#!/bin/bash
# Author by Taking
# (2) java language install + env

ARCH=$(uname -m)
if [ "$ARCH" = "x86_64" ]; then
    ARCH="x64"
fi
DOWNLOAD_URL=https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.3%2B9/OpenJDK21U-jdk_${ARCH}_linux_hotspot_21.0.3_9.tar.gz

if [ -d /usr/lib/jdk-21.0.3/bin/java ]; then
    echo -e "${RED}--java exist.. PASS--${NC}"
else
    echo -e "${RED}--java downloading...--${NC}"
    cd ~/
    wget --no-check-certificate --continue --show-progress $DOWNLOAD_URL
    tar xvzf OpenJDK21U-jdk_x64_linux_hotspot_21.0.3_9.tar.gz
    sudo mv jdk-21.0.3+9/ /usr/lib/jdk-21.0.3
    rm ~/OpenJDK21U-jdk_x64_linux_hotspot_21.0.3_9.tar.gz
    
    echo 'export JAVA_HOME=/usr/lib/jdk-21.0.3' | sudo tee -a $HOME/.zshrc
    echo 'export PATH=$JAVA_HOME/bin/:$PATH' | sudo tee -a $HOME/.zshrc
    echo 'export CLASS_PATH=$JAVA_HOME/lib:$CLASS_PATH' | sudo tee -a $HOME/.zshrc
    
    echo 'export JAVA_HOME=/usr/lib/jdk-21.0.3' | sudo tee -a $HOME/.bashrc
    echo 'export PATH=$JAVA_HOME/bin/:$PATH' | sudo tee -a $HOME/.bashrc
    echo 'export CLASS_PATH=$JAVA_HOME/lib:$CLASS_PATH' | sudo tee -a $HOME/.bashrc

    source $HOME/.zshrc

    ## Test if Java is working
    java --version
fi
