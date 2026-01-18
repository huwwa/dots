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
alias grep='grep --color=auto'
alias diff='diff -u --color=always'

# xbps
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

#apps
alias vi='vim'

export HISTCONTROL=ignoreboth
export HISTSIZE=500
export HISTIGNORE="clear:cd:cd -:cd ..:exit:date:ls:ll"

PS1="[\u@\[\e[0;37m\]\h \[\e[0m\]\W]$ "
