# APPS
export APPS=~/Apps

export NODEHOME=$APPS/node/bin

# Starship
export STARSHIP_CONFIG=~/.config/tokyo-night.toml

# PATH
export PATH=$PATH:$APPS:$NODEHOME

# zsh
fpath=(~/.config/zsh/completions ~/.config/zsh/plugins/zsh-completions/src $fpath)
