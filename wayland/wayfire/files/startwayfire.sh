#! /bin/ksh
set -eu

: ${WLR_DRM_DEVICES:=/dev/dri/card0}
: ${XDG_CURRENT_DESKTOP:=wayfire}
: ${QT_QPA_PLATFORM:=wayland}
#: MOZ_ENABLE_WAYLAND:=1 # doesn't work yet

export WLR_DRM_DEVICES XDG_CURRENT_DESKTOP QT_QPA_PLATFORM

exec /usr/local/bin/wayfire "$@"
