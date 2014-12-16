# $OpenBSD: Makefile,v 1.37 2014/12/16 10:05:40 sthen Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		2.7
PATCHLEVEL =	.9
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8

CONFIGURE_ARGS += --with-ensurepip=no

.include <bsd.port.mk>
