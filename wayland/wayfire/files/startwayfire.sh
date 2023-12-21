#! /bin/ksh
set -eu

: ${WLR_DRM_DEVICES:=/dev/dri/card0}
: ${LIBSEAT_BACKEND:=noop}
: ${XDG_CURRENT_DESKTOP:=wayfire}
: ${XDG_RUNTIME_DIR:=${HOME}/.local/run}
: ${QT_QPA_PLATFORM:=wayland}
#: MOZ_ENABLE_WAYLAND:=1 # doesn't work yet

export WLR_DRM_DEVICES LIBSEAT_BACKEND
export XDG_CURRENT_DESKTOP XDG_RUNTIME_DIR
export QT_QPA_PLATFORM

if [ ! -d "${XDG_RUNTIME_DIR}" ]; then
    mkdir -m 700 -p "${XDG_RUNTIME_DIR}"
fi

exec /usr/local/bin/wayfire "$@"
