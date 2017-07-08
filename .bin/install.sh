#!/usr/bin/env bash

# Cleanup before install: since this is for new instances only, no backup needed #
# CAUTION: DO NOT RUN THIS unless you are ok with the dotfiles listed below getting nuked #
echo 'Removing .ctf/ before cloning repository...'
rm -rf $HOME/.ctf
echo 'Removing .env/...'
rm -rf $HOME/.env
echo 'Removing .bin/...'
rm -rf $HOME/.bin
echo 'Removing .bashrc...'
rm $HOME/.bashrc
echo 'Removing .bash_profile...'
rm $HOME/.bash_profile
echo 'Removing .zshrc...'
rm $HOME/.zshrc
echo 'Removing .tmux.conf...'
rm $HOME/.tmux.conf
echo 'Removing .vimrc...'
rm $HOME/.vimrc
echo 'Removing .gitconfig...'
rm $HOME/.gitconfig
echo 'Removing .gitignore...'
rm $HOME/.gitignore

git clone --bare git@github.com:Cfeusier/.ctf.git $HOME/.ctf

ctf() {
  /usr/bin/git --git-dir=$HOME/.ctf/ --work-tree=$HOME $@
}

ctf checkout
ctf config status.showUntrackedFiles no

source $HOME/.bin/link.sh
linkAll

