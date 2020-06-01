#!/bin/bash

#####################################################################
# Go to users Downloads directory
#####################################################################
cd ~/Downloads || exit

echo ""
echo " GRAB A FROSTY RELAX.. AND KEEP AN EYE TO PRESS NEXT ->"
echo ""
echo "                        .sssssssss."
echo "                    .sssssssssssssssssss"
echo "                  sssssssssssssssssssssssss"
echo "                 ssssssssssssssssssssssssssss"
echo "                  @@sssssssssssssssssssssss@ss"
echo "                  |s@@@@sssssssssssssss@@@@s|s"
echo "           _______|sssss@@@@@sssss@@@@@sssss|s"
echo "         /         sssssssss@sssss@sssssssss|s"
echo "        /  .------+.ssssssss@sssss@ssssssss.|"
echo "       /  /       |...sssssss@sss@sssssss...|"
echo "      |  |        |.......sss@sss@ssss......|"
echo "      |  |        |..........s@ss@sss.......|"
echo "      |  |        |...........@ss@..........|"
echo "       \  \       |............ss@..........|"
echo "        \  '------+...........ss@...........|"
echo "         \________ .........................|"
echo "                  |.........................|"
echo "                 /...........................\\"
echo "                |.............................|"
echo "                   |.......................|"
echo "                       |...............|"
echo ""
echo " by Asenlog"
echo ""


echo "#####################################################################"
echo "# Install xcode cli development tools ..."
echo "#####################################################################"
xcode-select --install
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Installing HomeBrew Package Manager and Apps ..."
echo "#####################################################################"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install wget
brew install zsh
brew install zsh-autosuggestions
brew install go
brew install php@7.3
brew install php-code-sniffer
brew install composer
brew install node@8
brew cask install phpstorm
brew cask install goland
brew cask install visual-studio-code
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Installing iTerm2 ..."
echo "#####################################################################"
wget -O iTerm.zip https://iterm2.com/downloads/stable/iTerm2-3_3_10.zip
unzip iTerm.zip
mv iTerm.app /Applications
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Installing Firefox ..."
echo "#####################################################################"
wget -O Firefox.dmg https://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US
hdiutil attach Firefox.dmg
cp -rf /Volumes/*.app /Applications
hdiutil detach /Volumes/Firefox
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Installing Docker ..."
echo "#####################################################################"
wget -O Docker.dmg https://download.docker.com/mac/stable/Docker.dmg
hdiutil attach Docker.dmg
cp -rf /Volumes/*.app /Applications
hdiutil detach /Volumes/Docker
echo "#####################################################################"
echo ""

