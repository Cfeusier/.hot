#!/usr/bin/env bash

source ./.bin/clean.sh

link_bash() {
  if [ "$1" != true ]; then
    remove_bashrc
    remove_bash_profile
  fi
  echo 'Linking .env/bash/.bashrc to ~/.bashrc...'
  ln -s .env/bash/.bashrc ~/.bashrc
  echo '----------------------------------------------------------------------'
  echo 'Linking .env/bash/.bash_profile to ~/.bash_profile...'
  ln -s .env/bash/.bash_profile ~/.bash_profile
}

link_zsh() {
  if [ "$1" != true ]; then
    remove_zshrc
  fi
  echo 'Linking .env/zsh/.zshrc to ~/.zshrc...'
  ln -s .env/zsh/.zshrc ~/.zshrc
}

link_tmux() {
  if [ "$1" != true ]; then
    remove_tmux_conf
  fi
  echo 'Linking .env/tmux/.tmux.conf to ~/.tmux.conf...'
  ln -s .env/tmux/.tmux.conf ~/.tmux.conf
}

link_vim() {
  if [ "$1" != true ]; then
    remove_vimrc
  fi
  echo 'Linking .env/vim/.vimrc to ~/.vimrc...'
  ln -s .env/vim/.vimrc ~/.vimrc
}

link_git() {
  if [ "$1" != true ]; then
    remove_gitconfig
    remove_gitignore
  fi
  echo 'Linking .env/git/.gitconfig to ~/.gitconfig...'
  ln -s .env/git/.gitconfig ~/.gitconfig
  echo '----------------------------------------------------------------------'
  echo 'Linking .env/git/.gitignore to ~/.gitignore...'
  ln -s .env/git/.gitignore ~/.gitignore
}

link_all() {
  # this is only used in install script
  echo '----------------------------------------------------------------------'
  echo 'Linking repository to relevant dotfiles...'
  echo '----------------------------------------------------------------------'
  link_bash true
  echo '----------------------------------------------------------------------'
  link_zsh true
  echo '----------------------------------------------------------------------'
  link_tmux true
  echo '----------------------------------------------------------------------'
  link_vim true
  echo '----------------------------------------------------------------------'
  link_git true
}

"$@"
