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
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade



brew install \
  vim \
  macvim \
	git \
	ack \
	tree \
	pstree \
	bash-completion \
  hub \
  tmux \
  heroku \
  node \
  yarn \
	s3cmd \
	leiningen \
	graphviz \
	cloc \
	jq \
	reattach-to-user-namespace \
  p7zip \
	python3 \
	postgres # no easy way to install just the psql client

brew cask install \
  google-chrome \
  skype \
  dropbox \
  slack \
  evernote \
  1password \
  docker \
  spectacle \
  omnigraffle \
	java \
	kindle \
	spotify \
	sonos \
	virtualbox \
	arduino
