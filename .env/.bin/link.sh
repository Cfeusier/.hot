#!/usr/bin/env bash

linkBash() {
  ln -s .env/.bash/.bashrc ~/.bashrc
  ln -s .env/.bash/.bash_profile ~/.bash_profile
}

linkZsh() {
  ln -s .env/.zsh/.zshrc ~/.zshrc
}

linkTmux() {
  ln -s .env/.tmux/.tmux.conf ~/.tmux.conf
}

linkAll() {
  linkBash
  linkZsh
  linkTmux
}
