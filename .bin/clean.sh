#!/usr/bin/env bash

log_separator() {
  echo '----------------------------------------------------------------------'
}

remove_root() {
  log_separator
  echo 'Removing .ctf/ before cloning repository...'
  rm -rf $HOME/.ctf
}

remove_env() {
  log_separator
  echo 'Removing .env/...'
  rm -rf $HOME/.env
}

remove_bin() {
  log_separator
  echo 'Removing .bin/...'
  rm -rf $HOME/.bin
}

remove_bashrc() {
  log_separator
  echo 'Removing .bashrc...'
  rm $HOME/.bashrc
}

remove_bash_profile() {
  log_separator
  echo 'Removing .bash_profile...'
  rm $HOME/.bash_profile
}

remove_zshrc() {
  log_separator
  echo 'Removing .zshrc...'
  rm $HOME/.zshrc
}

remove_tmux_conf() {
  log_separator
  echo 'Removing .tmux.conf...'
  rm $HOME/.tmux.conf
}

remove_vimrc() {
  log_separator
  echo 'Removing .vimrc...'
  rm $HOME/.vimrc
}

remove_gitconfig() {
  log_separator
  echo 'Removing .gitconfig...'
  rm $HOME/.gitconfig
}

remove_gitignore() {
  log_separator
  echo 'Removing .gitignore...'
  rm $HOME/.gitignore
}

remove_readme() {
  log_separator
  echo 'Removing README...'
  rm $HOME/README.md
}

clean_all() {
  log_separator
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
  log_separator
}

