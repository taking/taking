#!/usr/bin/env bash

if ! which brew
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

read -r -s -p "[sudo] sudo password for $(whoami):" pass

brew bundle --file=./taking.Brewfile

# /Applications/ 폴더 내의 모든 .app 파일에 대해 xattr 명령어 실행
for app in /Applications/*.app; do
    echo "$pass" | sudo -S xattr -dr com.apple.quarantine "$app"
done

printf '\n\n🎉 Congrat! Your mac has been set up successfully!\n'
