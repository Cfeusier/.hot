#!/usr/bin/env bash

echo 'Removing .ctf/ before cloning repository...'
rm -rf $HOME/.ctf
echo 'Done removing .ctf/'
echo 'Removing .env/...'
rm -rf $HOME/.env
echo 'Done removing .env/'
echo 'Removing .bin/...'
rm -rf $HOME/.bin
echo 'Done removing .bin/'
echo 'Removing .bashrc...'
rm -rf $HOME/.bashrc
echo 'Done removing .bashrc'
echo 'Removing .bash_profile...'
rm -rf $HOME/.bash_profile
echo 'Done removing .bash_profile'
echo 'Removing .zshrc...'
rm -rf $HOME/.zshrc
echo 'Done removing .zshrc'
echo 'Removing .tmux.conf...'
rm -rf $HOME/.tmux.conf
echo 'Done removing .tmux.conf'
echo 'Removing .vimrc...'
rm -rf $HOME/.vimrc
echo 'Done removing .vimrc'
echo 'Removing .gitconfig...'
rm -rf $HOME/.gitconfig
echo 'Done removing .gitconfig'
echo 'Removing .gitignore...'
rm -rf $HOME/.gitignore
echo 'Done removing .gitignore'
echo 'Removing .gitignore_global'
rm -rf $HOME/.gitignore_global
echo 'Done removing .gitignore_global'

git clone --bare git@github.com:Cfeusier/.ctf.git $HOME/.ctf

ctf() {
  /usr/bin/git --git-dir=$HOME/.ctf/ --work-tree=$HOME $@
}

# mkdir -p .ctf-backup
#
# ctf checkout
#
# if [ $? = 0 ]; then
#   echo "Checked out .ctf/";
# else
#   echo "Backing up pre-existing ./ctf";
#   ctf checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .ctf-backup/{}
# fi;

ctf checkout

ctf config status.showUntrackedFiles no

source $HOME/.bin/link.sh
linkAll

