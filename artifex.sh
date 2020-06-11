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
xcodebuild -license accept
xcode-select --install
echo "#####################################################################"
echo ""

if test ! $(which brew); then
  echo "#####################################################################"
  echo "# Installing HomeBrew Package Manager ..."
  echo "#####################################################################"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew tap homebrew/homebrew-cask
    brew tap homebrew/bundle
    brew tap homebrew/cask
    brew tap homebrew/core
    brew tap homebrew/services
    brew tap blendle/blendle
fi

echo "#####################################################################"
echo "# Updating HomeBrew ..."
echo "#####################################################################"
brew update
brew upgrade

echo "#####################################################################"
echo "# Installing HomeBrew Apps ..."
echo "#####################################################################"
brew install wget
brew install zsh
brew install zsh-autosuggestions
brew install go
brew install php@7.3
brew install php-code-sniffer
brew install composer
brew cask install phpstorm
brew cask install goland
brew cask install visual-studio-code
brew cask install docker
brew install kubectl
brew install kns
brew cask install postman
brew cask install dbeaver-community
brew cask install google-chrome
brew cask install firefox
brew cask install slack
brew cask install zoomus
brew cask install iterm2
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Installing powerlevel10k for iTerm2 ..."
echo "#####################################################################"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
echo ZSH_THEME="powerlevel10k/powerlevel10k" >> ~/.zshrc
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Setting up git config ..."
echo "#####################################################################"
echo "Enter mail used by Git:"
read -r gitMail
git config --global user.mail "$gitMail"
echo "Enter full name used by Git:"
read -r gitUserName
git config --global user.name "$gitUserName"
echo "#####################################################################"
echo ""

echo "#####################################################################"
echo "# Coping utility scripts in /usr/local/bin ..."
echo "#####################################################################"
cp ./utils/gcu.sh /usr/local/bin
sudo chmod +x /usr/local/bin/gcu.sh
echo "#####################################################################"
echo ""