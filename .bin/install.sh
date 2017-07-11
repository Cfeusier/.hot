#!/usr/bin/env bash

source ./.bin/clean.sh

# Cleanup before install: since this is for new instances only, no backup needed #
# CAUTION: DO NOT RUN THIS unless you are ok with the dotfiles listed below getting nuked #
echo '----------------------------------------------------------------------'
echo 'Cleaning file-system before installing .ctf...'
remove_root
remove_env
remove_bin
remove_bashrc
remove_bash_profile
remove_zshrc
remove_tmux_conf
remove_vimrc
remove_gitconfig
remove_gitignore
remove_readme
echo '----------------------------------------------------------------------'

git clone --bare git@github.com:Cfeusier/.ctf.git $HOME/.ctf

ctf() {
  /usr/bin/git --git-dir=$HOME/.ctf/ --work-tree=$HOME $@
}

ctf checkout
ctf config status.showUntrackedFiles no

echo '----------------------------------------------------------------------'
echo 'Linking repository to relevant dotfiles...'
source $HOME/.bin/link.sh

link_all

