#!/bin/sh

# Copy files over.
cp ./.aliases ~/ && cp ./.bash_* ~/ && cp ./.functions ~/ && cp ./.inputrc ~/
cp ./.gitconfig ~/ && cp ./.macos ~/

# Refresh the settings.
. ~/.aliases
. ~/.bash_prompt
. ~/.bash_profile
. ~/.functions
. ~/.macos
bind -f ~/.inputrc

# Update all brew packages, and cleanup old versions.
brew upgrade
brew cleanup
