#!/usr/bin/env bash

git clone --bare git@github.com:Cfeusier/.ctf.git $HOME/.ctf

ctf() {
  /usr/bin/git --git-dir=$HOME/.ctf/ --work-tree=$HOME $@
}

mkdir -p .ctf-backup

ctf checkout

if [ $? = 0 ]; then
  echo "Checked out .ctf/";
else
  echo "Backing up pre-existing ./ctf";
  ctf checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .ctf-backup/{}
fi;

ctf checkout

ctf config status.showUntrackedFiles no

source $HOME/.bin/clean.sh

source $HOME/.bin/link.sh

linkAll

