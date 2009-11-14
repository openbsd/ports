#!/bin/sh
#

LD_PRELOAD=/usr/local/lib/evolution/${R}/libevolution-mail-shared.so \
	${TRUEPREFIX}/bin/evolution.bin "$@"
