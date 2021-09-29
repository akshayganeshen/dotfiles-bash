#!/bin/bash
# Command history configuration

shopt -s histappend

export HISTSIZE=1024
export HISTFILESIZE=1048576

export HISTIGNORE='&:ls:ls -l:ls -la:cd:cd ..:jobs:disown:[bf]g:exit:history'
export HISTCONTROL=ignoreboth

alias histflush='history -a'
alias histreload='history -r'
alias histclear='history -c'

