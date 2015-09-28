# $OpenBSD: Makefile,v 1.3 2015/09/28 04:50:37 rpointel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.5
PATCHLEVEL =		.0
REVISION-main =		1
SHARED_LIBS =		python3.5m 0.0
VERSION_SPEC =		>=3.5,<3.6

CONFIGURE_ARGS +=	--with-ensurepip=no

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.5

.include <bsd.port.mk>
