SHELL=/bin/bash
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/clark/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

if [ -f "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi
alias ctf='/usr/bin/git --git-dir=/Users/clark/.ctf/ --work-tree=/Users/clark'
