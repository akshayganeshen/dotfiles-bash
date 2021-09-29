#!/bin/bash

# load bash completions if available
if ! shopt -oq posix; then
  if [ -f "/usr/local/etc/bash_completion" ] ; then
    . "/usr/local/etc/bash_completion"
  elif [ -f "/etc/bash_completion" ] ; then
    . "/etc/bash_completion"
  elif [ -f "/usr/share/bash-completion/bash_completion" ]; then
    . "/usr/share/bash-completion/bash_completion"
  fi
fi

