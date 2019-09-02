#!/bin/sh
mkdir -p ${HOME}/.local/share/thedarkmod
cd ${HOME}/.local/share/thedarkmod
if [ ! -f "${HOME}/.local/share/thedarkmod/Darkmod.cfg" ]; then
	cp ${TRUEPREFIX}/share/thedarkmod/Darkmod.cfg \
		${HOME}/.local/share/thedarkmod/
fi
exec ${TRUEPREFIX}/share/thedarkmod/thedarkmod "$@"
