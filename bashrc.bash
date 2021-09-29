BASHD="${HOME}/.bash.d"

# load certain scripts, even when non-interactive
if [ -f "${BASHD}/variables.bash" ] ; then
  . "${BASHD}/variables.bash"
fi
if [ -f "${BASHD}/functions.bash" ] ; then
  . "${BASHD}/functions.bash"
fi
if [ -f "${BASHD}/brew.bash" ] ; then
  . "${BASHD}/brew.bash"
fi
if [ -f "${BASHD}/env.bash" ] ; then
  . "${BASHD}/env.bash"
fi

# return if not running in interactive mode
case "${-}" in
  *i*) ;;
    *) return ;;
esac

# load remaining scripts for interactive sessions
if [ -f "${BASHD}/aliases.bash" ] ; then
  . "${BASHD}/aliases.bash"
fi
if [ -f "${BASHD}/hist.bash" ] ; then
  . "${BASHD}/hist.bash"
fi
if [ -f "${BASHD}/shopt.bash" ] ; then
  . "${BASHD}/shopt.bash"
fi
if [ -f "${BASHD}/fzf.bash" ] ; then
  . "${BASHD}/fzf.bash"
fi

# add support for inspecting archives with 'less'
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f "${BASHD}/colour.bash" ] ; then
  . "${BASHD}/colour.bash"
fi

if [ -f "${BASHD}/completion.bash" ] ; then
  . "${BASHD}/completion.bash"
fi
