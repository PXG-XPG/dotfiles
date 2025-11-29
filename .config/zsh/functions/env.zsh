# nushell
export NUSHELL=~/Apps/nushell

export APPS=~/Apps:$NUSHELL

# PATH
export PATH=$PATH:$APPS

export LIBVA_DRIVER_NAME=nvidia vainfo

# zsh
fpath=(~/.config/zsh/completions ~/.config/zsh/plugins/zsh-completions/src $fpath)
