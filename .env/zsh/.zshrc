## oh-my-zsh ##
export ZSH=$HOME/.oh-my-zsh
# theme
ZSH_THEME="clarkfeusier"
# dots
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
# plugins (in ~/.oh-my-zsh/plugins/*)
# add custom plugins to  ~/.oh-my-zsh/custom/plugins/
plugins=(git github bundler bower coffee docker gem jsontools meteor python scala web-search brew rails autoenv celery copydir copyfile cp gem gitignore heroku node npm nvm osx perl postgres rake rsync rvm ruby sublime vagrant xcode brew-cast rake-fast redis-cli)
# path
PATH=/usr/local/bin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/opt/gnu-sed/libexec/gnubin:$(brew --prefix homebrew/php/php55)/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
# source zsh shell executable
source $ZSH/oh-my-zsh.sh
# language setting if necessary
# export LANG=en_US.UTF-8
# editor settings
export EDITOR='vim'

alias mdstart='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'
alias mdstop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist'

# compilation flags if necessary
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# git aliases
alias gs='git status'
alias gcv='git commit -v'
alias gcob='git checkout -b'

# only list dirs
alias lsd='ls -l | grep "^d"'

# sublime alias
alias s='subl'

# timer alias
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Clean up LaunchServices to remove duplicates in the “Open With” menu
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# View HTTP traffic
# alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# JavaScriptCore REPL
jscbin="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc";
[ -e "${jscbin}" ] && alias jsc="${jscbin}";
unset jscbin;

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Make Grunt print stack traces by default
command -v grunt > /dev/null && alias grunt="grunt --stack"

alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"

# Kill all the tabs in Chrome to free up memory
 alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

 # hop to blog dir
alias blog="cd ~/Code/projects/live/Cfeusier.github.io/"

# hack on projects
alias hack="cd ~/code/projects/live ; ls;"

# hack reactor dir
alias hr="cd ~/Code/hack_reactor/ ; ls;"

alias toys="cd ~/Code/hack_reactor/toys/2014-12-toy-problems/"

alias sprints="cd ~/Code/hack_reactor/sprints/ ; ls;"

# take notes
alias notes="cd ~/Library/Containers/com.happenapps.Quiver/Data/Library/Application\ Support/Quiver/Quiver.qvlibrary/ ; ls;"

# serve and watch with jekyll
alias js="jekyll serve"

# start npm server
alias ns="npm start"

# npm install
alias ni="npm install"

alias tns="tmux new -s"
alias ta="tmux attach -t"
alias tde="tmux detach"
alias tks="tmux kill-session -t"
alias tls="tmux ls"
alias tnw="tmux new-window"
alias gpr="git pull --rebase"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"
export PATH=$PATH:/usr/local/bin/scala-2.11.6/bin
export PATH=$PATH:$HOME/Vendor/xiki-master/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/sbin"
export NVM_DIR="/Users/clark/.nvm"
export ATOM_NODE_VERSION="0.16.0"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/clark/Vendor/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/clark/Vendor/google-cloud-sdk/completion.zsh.inc'

# android-sdk location
export ANDROID_HOME=/usr/local/opt/android-sdk

# add yarn to path
export PATH="$HOME/.yarn/bin:$PATH"
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

alias hot='/Users/clark/.bin/hot.sh'

