#!/bin/bash

mktimestamp () {
    local timestamp
    if [ -n "${LOG_DATE_FMT-}" ] ; then
        timestamp="[$(date "${LOG_DATE_FMT}")]"
    else
        timestamp="[$(date)]"
    fi
    echo "${timestamp}"
}

tlog () {
    local timestamp="$(mktimestamp)"
    printf "${timestamp} $@\n"
}

