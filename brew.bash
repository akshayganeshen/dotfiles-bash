#!/bin/bash
# HomeBrew detection and configuration
# Adds utilities to the system PATH if they are installed

if command -v "brew" >/dev/null 2>&1 ; then
  eval "$(brew shellenv)"
fi

export BREW_OPTDIR="/usr/local/opt"
export BREW_PYTHONPATH="${BREW_OPTDIR}/python/libexec/bin"
export BREW_GNUPATH="${BREW_OPTDIR}/coreutils/libexec/gnubin"
export BREW_RABBITMQPATH="${BREW_OPTDIR}/rabbitmq/sbin"
export BREW_CURLPATH="${BREW_OPTDIR}/curl/bin"

if [ -d "${BREW_PYTHONPATH}" ] ; then
  export PATH="${BREW_PYTHONPATH}:${PATH}"
fi

if [ -d "${BREW_GNUPATH}" ] ; then
  export PATH="${BREW_GNUPATH}:${PATH}"
  export MANPATH="${BREW_OPTDIR}/coreutils/libexec/gnuman:${MANPATH}"
fi

if [ -d "${BREW_RABBITMQPATH}" ] ; then
  export PATH="${BREW_RABBITMQPATH}:${PATH}"
fi

if [ -d "${BREW_CURLPATH}" ] ; then
  export PATH="${BREW_CURLPATH}:${PATH}"
fi
