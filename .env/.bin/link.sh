#!/usr/bin/env bash

linkBash() {
  ln -s ~/.ctf/.env/.bash/.bashrc ~/.bashrc
  ln -s ~/.ctf/.env/.bash/.bash_profile ~/.bash_profile
}

linkZsh() {
  ln -s ~/.ctf/.env/.zsh/.zshrc ~/.zshrc
}

linkTmux() {
  ln -s ~/.ctf/.env/.tmux/.tmux.conf ~/.tmux.conf
}

linkAll() {
  linkBash && linkZsh && linkTmux
}
