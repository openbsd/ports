# $OpenBSD: Makefile,v 1.59 2019/04/03 05:23:40 rpointel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		2.7
PATCHLEVEL =		.16
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8

CONFIGURE_ARGS += --with-ensurepip=no

PORTROACH =             limit:^2\.7

.include <bsd.port.mk>
