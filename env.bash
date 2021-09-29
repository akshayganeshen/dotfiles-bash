#!/bin/bash
# Environment variables and configuration

export MAKEFLAGS="-j4"

if [ -d "${HOME}/Development" ] ; then
  export DEVDIR="${HOME}/Development"

  if [ -d "${DEVDIR}/tools/go" ] ; then
    export GOPATH="${DEVDIR}/tools/go"
    export PATH="${PATH}:${GOPATH}/bin"
  fi

  if [ -d "${DEVDIR}/tools/bin" ] ; then
    export DEVPATH="${DEVDIR}/tools/bin"
    export PATH="${DEVPATH}:${PATH}"
  fi
fi

export LOCALPATH="${HOME}/bin"
export PATH="${LOCALPATH}:${PATH}"
