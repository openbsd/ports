#! /bin/ksh
set -eu

: ${WLR_DRM_DEVICES:=/dev/dri/card0}
: ${XDG_CURRENT_DESKTOP:=cagebreak}
: ${XDG_RUNTIME_DIR:=${HOME}/.local/run}
: ${QT_QPA_PLATFORM:=wayland}

export WLR_DRM_DEVICES
export XDG_CURRENT_DESKTOP XDG_RUNTIME_DIR
export QT_QPA_PLATFORM

if [ ! -d "${XDG_RUNTIME_DIR}" ]; then
    mkdir -m 700 -p "${XDG_RUNTIME_DIR}"
fi

exec /usr/local/bin/cagebreak "$@"
