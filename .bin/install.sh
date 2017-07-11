#!/usr/bin/env bash

# Clean relevant file-system locations before installation of .ctf
source ./.bin/clean.sh
clean_all

# Clone remote Git repository into .ctf/ as a bare repository
git clone --bare git@github.com:Cfeusier/.ctf.git $HOME/.ctf

# Checkout recently cloned local ctf repository and configure to only show tracked files
source ./.bin/ctf.sh
ctf checkout
ctf config status.showUntrackedFiles no

# Link source dotfiles to 'expected' locations on file system
source $HOME/.bin/link.sh
link_all

