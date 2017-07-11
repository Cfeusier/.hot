#!/usr/bin/env bash

ctf() {
  /usr/bin/git --git-dir=$HOME/.ctf/ --work-tree=$HOME $@
}

