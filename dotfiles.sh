#!/bin/bash 
set -e -u

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

if ! [ -d "~/dotfiles" ]; then
  cd ~
  git clone https://github.com/moredip/dotfiles.git
fi

cd ~/dotfiles
git submodule update --init --recursive
./install.rb
