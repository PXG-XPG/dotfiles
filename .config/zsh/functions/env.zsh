# EDITOR
export EDITOR=nvim

# Starship
export STARSHIP_CONFIG=~/.config/tokyo-night.toml

# APPS
export APPS=~/Apps
export NODEHOME=$APPS/node/bin

# PATH
export PATH=$PATH:$APPS:$NODEHOME

# zsh's fpath
fpath=(~/.config/zsh/plugins/zsh-completions/src $fpath)
