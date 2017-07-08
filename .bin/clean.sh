#!/usr/bin/env bash

cleanRepo() {
  echo 'Removing .ctf/ before cloning repository...'
  rm -rf $HOME/.ctf
  echo 'Done removing .ctf/'
}

cleanEnv() {
  echo 'Removing .env/...'
  rm -rf $HOME/.env
  echo 'Done removing .env/'
}

cleanScripts() {
  echo 'Removing .bin/...'
  rm -rf $HOME/.bin
  echo 'Done removing .bin/'
}

cleanBash() {
  echo 'Removing .bashrc...'
  rm -rf $HOME/.bashrc
  echo 'Done removing .bashrc'
  echo 'Removing .bash_profile...'
  rm -rf $HOME/.bash_profile
  echo 'Done removing .bash_profile'
}

cleanZsh() {
  echo 'Removing .zshrc...'
  rm -rf $HOME/.zshrc
  echo 'Done removing .zshrc'
}

cleanTmux() {
  echo 'Removing .tmux.conf...'
  rm -rf $HOME/.tmux.conf
  echo 'Done removing .tmux.conf'
}

cleanVim() {
  echo 'Removing .vimrc...'
  rm -rf $HOME/.vimrc
  echo 'Done removing .vimrc'
}

cleanGit() {
  echo 'Removing .gitconfig...'
  rm -rf $HOME/.gitconfig
  echo 'Done removing .gitconfig'
  echo 'Removing .gitignore...'
  rm -rf $HOME/.gitignore
  echo 'Done removing .gitignore'
  echo 'Removing .gitignore_global'
  rm -rf $HOME/.gitignore_global
  echo 'Done removing .gitignore_global'
}

clean() {
  cleanRepo
  cleanEnv
  cleanScripts
  cleanBash
  cleanZsh
  cleanTmux
  cleanVim
  cleanGit
}
