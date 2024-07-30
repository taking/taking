#!/usr/bin/env bash

if ! which brew
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

read -r -s -p "[sudo] sudo password for $(whoami):" pass

brew bundle --file=./taking.Brewfile

# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/iTerm.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Microsoft\ Edge.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Adguard.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Authy\ Desktop.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/BetterTouchTool.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Dash.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Dropbox.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Fig.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/ForkLift.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Notion.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Postman.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Shottr.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/CleanShot\ X.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Movist\ Pro.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Calendar\ 366\ II.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/iStat\ Menus.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Parsec.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Transmit.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Raycast.app
# echo "$pass" | sudo -S xattr -dr com.apple.quarantine /Applications/Quitter.app

printf '\n\n🎉 Congrat! Your mac has been set up successfully!\n'