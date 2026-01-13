#!/bin/bash

# Aliases
alias mv='mv -i'
alias cp='cp -i'
alias ll='ls -lahF --color=auto'
alias ls='ls -F --color=auto'
alias cls='clear'
alias grep='grep --color=auto'

if [[ -x $(command -v eza) ]]; then
    alias eza='eza --long --all --header --inode'
fi

if [[ -x $(command -v fastfetch) ]]; then
    alias ff='fastfetch'
fi

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
