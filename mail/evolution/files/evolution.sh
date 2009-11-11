#!/bin/sh
#

LD_PRELOAD=${TRUEPREFIX}/lib/evolution/${R}/components/libevolution-addressbook.so:/usr/local/lib/evolution/${R}/libevolution-mail-shared.so \
	${TRUEPREFIX}/libexec/evolution/${R}/evolution "$@"
