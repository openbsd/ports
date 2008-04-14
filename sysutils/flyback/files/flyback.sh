#!/bin/sh
#
# $OpenBSD: flyback.sh,v 1.1.1.1 2008/04/14 13:39:51 jasper Exp $
#

cd !!MODPY_SITEPKG!!/flyback
exec !!MODPY_BIN!! \
	!!MODPY_SITEPKG!!/flyback/flyback.py "$@"
