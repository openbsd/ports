#!/bin/sh
#
# $OpenBSD: fritzing.sh,v 1.1.1.1 2010/09/15 07:14:18 jasper Exp $
# Since Fritzing wants it's file stored in CWD or specified via --folder
# we use the last. Lest to prevent ever changing patches.

${TRUEPREFIX}/bin/Fritzing --folder ${TRUEPREFIX}/share/fritzing/ "$@"
