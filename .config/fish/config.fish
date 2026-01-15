if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

fish_default_key_bindings

set -x STARSHIP_CONFIG ~/.config/gruvbox-rainbow.toml
starship init fish | source

zoxide init fish | source
