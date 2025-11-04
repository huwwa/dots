# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM=xterm-256color
export COLORTERM=truecolor

#commands
alias ls='ls --color=auto'
alias ll='ls -lh'
alias mv='mv -iv'
alias ..='cd ..'
alias str='python -m http.server'
alias grep='grep --color=auto --exclude=tags --exclude-dir=.git --exclude='*.{tar*,zip}''

# xbps
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

#apps
alias vi='vim'

#bash
#set -o vi 
#bind -m vi-command 'Control-l: clear-screen'
#bind -m vi-insert  'Control-l: clear-screen'
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTIGNORE="clear:cd:cd -:cd ..:exit:date:* --help:ls:ll:ping*"

export PS1="\W > "

. "$HOME/.local/bin/env"
