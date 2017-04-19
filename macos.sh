#!/bin/bash 
set -e -u

# based on:
#  - https://github.com/mathiasbynens/dotfiles/blob/dd808d5d50912afbb9c78d359a8e4f773621f769/.macos

# Ask for the administrator password upfront.
sudo -v

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Show only open applications in the Dock
defaults write com.apple.dock static-only -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Top right screen corner → Sleep Display
defaults write com.apple.dock wvous-tr-corner -int 10
defaults write com.apple.dock wvous-tr-modifier -int 0
