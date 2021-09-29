#!/bin/bash
# Shell options, mostly for interactive sessions

qshopt () {
  shopt -s "$@" 2>/dev/null
}

# fix typos in paths supplied to 'cd'
qshopt cdspell

# always verify that cached binary paths are still valid
qshopt checkhash

# display spawned jobs before session exit
qshopt checkjobs

# recalculate terminal size variables after every command
qshopt checkwinsize

# save multi-line commands as one history entry
qshopt cmdhist

# apply word expansion when completing on directories
qshopt direxpand

# fix typos when completing on directories
qshopt dirspell

# perform alias expansion, even when not interactive
qshopt expand_aliases

# enable extended glob operators
qshopt extglob

# allow '**' to glob recursively, and '**/' for directories
qshopt globstar

# append to history file, instead of replacing it
qshopt histappend

# allow modifying failed history substitutions
qshopt histreedit

# load history expansion into edit buffer instead of running
qshopt histverify

# use known hosts to complete words containing a '@'
qshopt hostcomplete

# enable escape sequence expansion on 'echo'
qshopt xpg_echo

