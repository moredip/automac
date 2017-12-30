#!/bin/bash 
set -e -u

if ! [ -d "~/dotfiles" ]; then
  cd ~
  git clone https://github.com/moredip/dotfiles.git
fi

cd ~/dotfiles
git submodule update --init --recursive
./install.rb
