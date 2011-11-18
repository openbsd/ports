#!/bin/sh

mkdir -p ~/rocrail
cd ~/rocrail

${TRUEPREFIX}/bin/rocview -sp /var/rocrail -themespath ${TRUEPREFIX}/share/rocrail $@
