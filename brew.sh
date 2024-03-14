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

# brew install \
#   git \
#   ack \
#   tree \
#   pstree \
#   bash-completion \
#   hub \
#   tmux \
#   heroku/brew/heroku \
#   node \
#   npm \
#   yarn \
#   s3cmd \
#   awscli \
#   leiningen \
#   graphviz \
#   cloc \
#   jq \
#   reattach-to-user-namespace \
#   p7zip \
#   python3 \
#   watchman \
#   pulumi \
#   hugo \
#   postgres # no easy way to install just the psql client

# brew tap d12frosted/emacs-plus
# brew install emacs-plus
# brew services start d12frosted/emacs-plus/emacs-plus

# brew install --cask \
#   google-chrome \
#   skype \
#   dropbox \
#   slack \
#   evernote \
#   1password \
#   1password-cli \
#   docker \
#   spectacle \
#   omnigraffle \
#   java \
#   java8 \
#   kindle \
#   spotify \
#   gitup \
#   arduino \
#   postman \
#   whatsapp \
#   intellij-idea-ce \
#   toggl \
#   graphiql \
#   tunnelblick \
#   caffeine \
#   autodesk-fusion360 \
#   balenaetcher \
#   prusaslicer \
#   send-to-kindle
