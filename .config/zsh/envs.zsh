# Z shell
export ZSH=~/.config/zsh

# starship
export STARSHIP_CONFIG=~/.config/tokyo-night.toml

# my apps
export APPS=~/Apps
export NODEHOME=$APPS/node/bin

# PATH
export PATH=$PATH:$APPS:$NODEHOME

# zsh's fpath
fpath=($ZSH/plugins/zsh-completions/src $fpath)
