#!/bin/bash
set -e -u

# based on:
#  - https://github.com/donnemartin/dev-setup/blob/30610914b81c7e638b86e740f62b0b2b303cf09f/brew.sh

# Ask for the administrator password upfront.
sudo -v

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# install everything in Brewfile
brew bundle install