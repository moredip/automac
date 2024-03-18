#!/bin/bash
set -e -u

[ -d ~/.ssh ] || ssh-keygen

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# install Oh My Zsh (also needs .zshrc to be installed via dotfiles repo)
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
