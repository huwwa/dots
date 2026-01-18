# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export OPENER="xdg-open"
export TERMINAL="st"
export BROWSER="firefox"
export EDITOR="vim-x11"

doas loadkeys $HOME/.config/loadkeys/loadkeysrc

[ "$(tty)" == "/dev/tty1" ] && startx

. "$HOME/.local/bin/env"
