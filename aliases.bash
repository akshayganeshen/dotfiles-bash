#!/bin/bash
# Aliases
# To be loaded for interactive sessions

# linux interop, 'open' with default application
if command -v "xdg-open" >/dev/null 2>&1 ; then
  alias open='xdg-open'
fi

# 'ls' aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# 'grep' aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
