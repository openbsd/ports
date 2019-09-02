#!/bin/sh
mkdir -p ${HOME}/.local/share/thedarkmod
cd ${HOME}/.local/share/thedarkmod
exec ${TRUEPREFIX}/share/thedarkmod/tdm_update --noselfupdate "$@"
