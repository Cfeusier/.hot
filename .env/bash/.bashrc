SHELL=/bin/bash
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="/Users/clark/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

if [ -f "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi
