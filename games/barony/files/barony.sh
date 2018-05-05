#!/bin/sh

mkdir -p ~/.barony
cd ~/.barony || { echo "Can't cd into ~/.barony" >&2; exit 1; }
exec ${TRUEPREFIX}/bin/barony-bin $@
