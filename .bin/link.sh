#!/usr/bin/env bash

linkBash() {
  echo 'Linking .env/bash/.bashrc to ~/.bashrc...'
  ln -s .env/bash/.bashrc ~/.bashrc
  echo '----------------------------------------------------------------------'
  echo 'Linking .env/bash/.bash_profile to ~/.bash_profile...'
  ln -s .env/bash/.bash_profile ~/.bash_profile
}

linkZsh() {
  echo 'Linking .env/zsh/.zshrc to ~/.zshrc...'
  ln -s .env/zsh/.zshrc ~/.zshrc
}

linkTmux() {
  echo 'Linking .env/tmux/.tmux.conf to ~/.tmux.conf...'
  ln -s .env/tmux/.tmux.conf ~/.tmux.conf
}

linkVim() {
  echo 'Linking .env/vim/.vimrc to ~/.vimrc...'
  ln -s .env/vim/.vimrc ~/.vimrc
}

linkGit() {
  echo 'Linking .env/git/.gitconfig to ~/.gitconfig...'
  ln -s .env/git/.gitconfig ~/.gitconfig
  echo '----------------------------------------------------------------------'
  echo 'Linking .env/git/.gitignore to ~/.gitignore...'
  ln -s .env/git/.gitignore ~/.gitignore
}

linkAll() {
  echo '----------------------------------------------------------------------'
  linkBash
  echo '----------------------------------------------------------------------'
  linkZsh
  echo '----------------------------------------------------------------------'
  linkTmux
  echo '----------------------------------------------------------------------'
  linkVim
  echo '----------------------------------------------------------------------'
  linkGit
}
