#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f "$HOME/.config/bash/aliases.sh" ] && source "$HOME/.config/bash/aliases.sh"
[ -f "$HOME/.config/bash/functions.sh" ] && source "$HOME/.config/bash/functions.sh"
[ -f "$HOME/.config/bash/completes.sh" ] && source "$HOME/.config/bash/completes.sh"

PS1='[\u@\h \W]\$ '
