#!/bin/sh
cd ${TRUEPREFIX}/share/sauerbraten
exec ${TRUEPREFIX}/libexec/sauer_client -q${HOME}/.sauerbraten -r "$@"
