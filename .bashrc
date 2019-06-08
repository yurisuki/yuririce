#!/bin/bash
#                 _  _     _             _
#  _ _  _ _  _ _ <_>|/___ | |_  ___  ___| |_
# | | || | || '_>| | <_-< | . \<_> |<_-<| . |
# `_. |`___||_|  |_| /__/ |___/<___|/__/|_|_|
# <___'

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd # Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
export PS1="· \[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

fetch # Execute `fetch` script
fetch packages # Update packages
