#!/bin/sh
#
# Since Fritzing wants it's file stored in CWD or specified via --folder
# we use the last. Lest to prevent ever changing patches.

${TRUEPREFIX}/bin/Fritzing --folder ${TRUEPREFIX}/share/fritzing/ "$@"
