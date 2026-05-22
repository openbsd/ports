#!/bin/sh

mkdir -p ~/rocrail
cd ~/rocrail

${TRUEPREFIX}/libexec/rocrail/rocview -sp /var/rocrail -themespath ${TRUEPREFIX}/share/rocrail $@
