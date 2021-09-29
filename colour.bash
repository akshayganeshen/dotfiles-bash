#!/bin/bash
# Terminal colours

# prints an escape sequence producing the desired fg colour
rgbtoescape () {
    if [ -z "${1-}" ] || [ -z "${2-}" ] || [ -z "${3-}" ] ; then
        echo "usage: ${0} r g b" >&2
        echo "    r, g, b must be 0-255"
        return 1
    fi
    printf '\[\e[0;38;2;'"${1};${2};${3}"'m\]'
}

colour_reset_code='\[\e[0m\]'
# prints an escape sequence that resets all formatting
rgbreset() {
    printf "${colour_reset_code}"
}
colour_reset="$(rgbreset)"

colour_bold_code='\[\e[1m\]'
# prints an escape sequence that enables bold text
rgbbold() {
    printf "${colour_bold_code}"
}
colour_bold="$(rgbbold)"

# detect colour support
case "${TERM}" in
  xterm|xterm-color|*-256color) color_prompt=yes ;;
esac

if [ -n "${color_prompt-}" ] ; then
  # load colour settings for 'ls'
  if command -v "dircolors" >/dev/null 2>&1 ; then
    if [ -r "${HOME}/.dircolors" ] ; then
      eval "$(dircolors -b "${HOME}/.dircolors")"
    else
      eval "$(dircolors -b)"
    fi
  fi

  # reset and bold
  clr_rb="$(rgbreset)$(rgbbold)"
  # main colour
  clr_m="$(rgbtoescape 170 185 195)"
  # alt colour
  clr_a="$(rgbtoescape 230 240 255)"

  PS1_BASE="${clr_rb}${clr_m}\u${clr_rb}@\h:${clr_m}\W${clr_rb} ${clr_a}\\$ $(rgbreset)"
  export PS1="${PS1_BASE}"

  unset clr_rb clr_m clr_a
fi

