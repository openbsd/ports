#! /bin/ksh
set -eu

: ${XDG_CURRENT_DESKTOP:=niri}

export XDG_CURRENT_DESKTOP

exec /usr/local/bin/niri "$@"
