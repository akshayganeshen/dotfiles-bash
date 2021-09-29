
# detect if installed through brew
export BREW_FZFROOT="/usr/local/opt/fzf"
if [ -d "${BREW_FZFROOT}" ] ; then
  export FZFROOT="${BREW_FZFROOT}"
else
  # fallback
  export FZFROOT="${HOME}/.fzf"
fi

# set options
export FZF_DEFAULT_OPTS="--height 100%"

# load completion and key binding files
if [ -f "${FZFROOT}/shell/completion.bash" ] ; then
  . "${FZFROOT}/shell/completion.bash"
fi

if [ -f "${FZFROOT}/shell/key-bindings.bash" ] ; then
  . "${FZFROOT}/shell/key-bindings.bash"
fi

