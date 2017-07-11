#!/usr/bin/env bash

remove_root() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .ctf/ before cloning repository...'
  rm -rf $HOME/.ctf
}

remove_env() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .env/...'
  rm -rf $HOME/.env
}

remove_bin() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .bin/...'
  rm -rf $HOME/.bin
}

remove_bashrc() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .bashrc...'
  rm $HOME/.bashrc
}

remove_bash_profile() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .bash_profile...'
  rm $HOME/.bash_profile
}

remove_zshrc() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .zshrc...'
  rm $HOME/.zshrc
}

remove_tmux_conf() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .tmux.conf...'
  rm $HOME/.tmux.conf
}

remove_vimrc() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .vimrc...'
  rm $HOME/.vimrc
}

remove_gitconfig() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .gitconfig...'
  rm $HOME/.gitconfig
}

remove_gitignore() {
  echo '----------------------------------------------------------------------'
  echo 'Removing .gitignore...'
  rm $HOME/.gitignore
}

remove_readme() {
  echo '----------------------------------------------------------------------'
  echo 'Removing README...'
  rm $HOME/README.md
}

