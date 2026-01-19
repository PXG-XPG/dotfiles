# Load environment variables frist
source ~/.config/zsh/envs.zsh

# Load config files
for file in $ZSH/config/*.zsh
do
    source $file
done

bindkey -e

# Load plugins
source $ZSH/plugins/plugins.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
