#!/bin/sh

#
xcode-select --install

# Install Homebrew.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Browsers.
brew install --cask FireFox
brew install --cask google-chrome

# Install Dev apps.
# brew install --cask atom
# brew install --cask docker
brew install --cask visual-studio-code
brew install --cask raycast


# Install Misc.
brew install --cask keka
brew install --cask skim
brew install --cask rectangle

# Install Tools.
sudo chown -R $(whoami) /usr/local/lib/pkgconfig
brew install python@3
# brew install python@2
brew install ruby
brew install netcat
# brew install docker
brew install npm
brew install htop
brew install hugo

pip2 install virtualenv
pip3 install ipython
brew install imagemagick
brew install tree

brew install --cask keepassxc


brew tap lyraphase/pcloud
brew install --cask pcloud-drive
brew install --cask google-drive

brew install --cask microsoft-excel
brew install --cask microsoft-word


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
# brew install --cask evernote
# brew install --cask shades
# brew install --cask google-drive-file-stream
# brew install --cask vnc-viewer
# brew install --cask obs
brew install --cask zotero

# brew install --cask dropbox
brew install --cask macpass
brew install --cask appcleaner
# brew install --cask bibdesk
# brew install --cask tomgross/pcloud/pcloud
brew install --cask obsidian

# Communication apps
# brew install --cask skype
# brew install --cask slack
brew install --cask zoomus
brew install --cask rambox
# brew install --cask signal
# brew install --cask discord

# Media apps
 #brew cast install mkchromecast
# brew install --cask handbrake
# brew install --cask blackhole
brew install sox
brew install --cask vlc
brew install --cask cycling74-max
brew install --cask ableton-live-suite
brew install --cask midi-monitor
brew install --cask vcv-rack
# brew install --cask surge-synthesizer
brew install --cask reaper
brew install --cask sysex-librarian
brew install --cask syncthing
brew install supercollider
brew install --cask pd

# Connectivity
brew install --cask lulu # block non-wanted connections

# wine. doesn't work >=10.15
brew tap homebrew/cask-versions
brew install --cask --no-quarantine wine-stable

# # Look and feel bash
# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"



# Setup bash settings.
chmod +x ./reload.sh
./reload.sh


# Max's
#   Flucoma
#   nn~
# Wekinator


