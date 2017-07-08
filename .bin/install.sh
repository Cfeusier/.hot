#!/usr/bin/env bash

# Cleanup before install: since this is for new instances only, no backup needed #
# CAUTION: DO NOT RUN THIS unless you are ok with the dotfiles listed below getting nuked #
echo '-------------------------------------------'
echo 'Removing .ctf/ before cloning repository...'
rm -rf $HOME/.ctf
echo '-------------------------------------------'
echo 'Removing .env/...'
rm -rf $HOME/.env
echo '-------------------------------------------'
echo 'Removing .bin/...'
rm -rf $HOME/.bin
echo '-------------------------------------------'
echo 'Removing .bashrc...'
rm $HOME/.bashrc
echo '-------------------------------------------'
echo 'Removing .bash_profile...'
rm $HOME/.bash_profile
echo '-------------------------------------------'
echo 'Removing .zshrc...'
rm $HOME/.zshrc
echo '-------------------------------------------'
echo 'Removing .tmux.conf...'
rm $HOME/.tmux.conf
echo '-------------------------------------------'
echo 'Removing .vimrc...'
rm $HOME/.vimrc
echo '-------------------------------------------'
echo 'Removing .gitconfig...'
rm $HOME/.gitconfig
echo '-------------------------------------------'
echo 'Removing .gitignore...'
rm $HOME/.gitignore
echo '-------------------------------------------'

git clone --bare git@github.com:Cfeusier/.ctf.git $HOME/.ctf

ctf() {
  /usr/bin/git --git-dir=$HOME/.ctf/ --work-tree=$HOME $@
}

echo '-------------------------------------------'
ctf checkout
ctf config status.showUntrackedFiles no

echo '-------------------------------------------'
echo 'Linking repository to relevant dotfiles...'
source $HOME/.bin/link.sh
linkAll

