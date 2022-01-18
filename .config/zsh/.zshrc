#!/bin/zsh
#                   _ _               _
#  _   _ _   _ _ __(_| )___   _______| |__
# | | | | | | | '__| |// __| |_  / __| '_ \
# | |_| | |_| | |  | | \__ \  / /\__ \ | | |
#  \__, |\__,_|_|  |_| |___/ /___|___/_| |_|
#  |___/

setopt autocd # Allows you to cd into directory merely by typing the directory name.
stty stop undef	# Disable ctrl+s to freeze terminal.
setopt interactive_comments

autoload -U colors && colors # Load colours
export PROMPT="· %B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}%B$%b "

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/.zshhistory

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

# Use pywal colours in tty
[ -f "${XDG_CONFIG_HOME:-$HOME/.cache}/wal/colors-tty.sh" ] && source "${XDG_CONFIG_HOME:-$HOME/.cache}/wal/colors-tty.sh"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files.

# Vim mode
bindkey -v # Vim control in zsh
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

fetch2 # Execute `fetch2` script.

# Load syntax highlighting; should be last.
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
