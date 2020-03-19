#!/bin/sh

#
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Browsers.
brew cask install FireFox
brew cask install google-chrome

# Install Dev apps.
brew cask install atom
brew cask install docker

# Install Misc.
brew cask install keka
brew cask install skim
brew cask install spectacle

# Install Tools.
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
brew install python@3
brew install python@2
brew install ruby
brew install netcat
brew install docker
brew install npm
brew install htop

pip2 install virtualenv
pip3 install ipython
brew install imagemagick
brew install tree


# Because mac verion of xargs and sed is god awful.
brew install findutils
brew install gnu-sed

# Needed in Mac Sierra.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
sudo ln -s /usr/local/bin/gsha512sum /usr/local/bin/sha512sum

# Stop Safari notifications. (COME ON APPLE! REALLY?!)
defaults write com.apple.coreservices.uiagent CSUIHasSafariBeenLaunched -bool YES
defaults write com.apple.coreservices.uiagent CSUIRecommendSafariNextNotificationDate -date 2050-01-01T00:00:00Z
defaults write com.apple.coreservices.uiagent CSUILastOSVersionWhereSafariRecommendationWasMade -float 10.99


# Productivity apps
brew cask install iterm2
brew cask install evernote
brew cask install shades
# brew cask install dropbox
brew cask install macpass
brew cask install appcleaner
brew cask install bibdesk

# Communication apps
brew cask install skype
# brew cask install rambox
# brew cask install signal

# Media apps
 #brew cast install mkchromecast
brew install sox
brew cask install vlc
brew cask install cycling74-max

# Connectivity
# brew cask install lulu # block non-wanted connections

# Setup bash settings.
chmod +x ./reload.sh
./reload.sh


# # Look and feel bash
# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

