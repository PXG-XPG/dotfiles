HISTFILE=~/.zsh_history
HISTSIZE=4096
SAVEHIST=4096

# Ignore duplicate commands
setopt HIST_IGNORE_DUPS

# Ignore commands that begin with a space 
# Used to temporarily execute sensitive commands that you don't want to save
setopt HIST_IGNORE_SPACE

# Share history between sessions
setopt SHARE_HISTORY

# Append history, not override
setopt APPEND_HISTORY

# Add timestamps to history
setopt EXTENDED_HISTORY
