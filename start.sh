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
brew cask install visual-studio-code

# Install Misc.
brew cask install keka
brew cask install skim
brew cask install rectangle

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
brew install --cask iterm2
brew install --cask evernote
brew install --cask shades
brew install --cask google-drive-file-stream
brew install --cask vnc-viewer
brew install --cask obs

# brew install --cask dropbox
brew install --cask macpass
brew install --cask appcleaner
brew install --cask bibdesk

# Communication apps
brew install --cask skype
brew install --cask slack
brew install --cask zoomus
brew install --cask rambox
# brew install --cask signal

# Media apps
 #brew cast install mkchromecast
brew install --cask handbrake
brew install --cask blackhole
brew install sox
brew install --cask vlc
brew install --cask cycling74-max
brew install --cask ableton-live-suite
brew install --cask midi-monitor

# Connectivity
brew install --cask lulu # block non-wanted connections

# Setup bash settings.
chmod +x ./reload.sh
./reload.sh


# # Look and feel bash
# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

