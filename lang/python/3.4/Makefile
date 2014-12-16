# $OpenBSD: Makefile,v 1.4 2014/12/16 10:05:40 sthen Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.4
REVISION-main =		0
PATCHLEVEL =		.1
SHARED_LIBS =		python3.4m 1.0
VERSION_SPEC =		>=3.4,<3.5

CONFIGURE_ARGS +=	--with-ensurepip=no

.include <bsd.port.mk>
