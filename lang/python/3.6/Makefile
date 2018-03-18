# $OpenBSD: Makefile,v 1.9 2018/03/18 01:27:30 tb Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.6
PATCHLEVEL =		.4
SHARED_LIBS =		python3.6m 0.0
VERSION_SPEC =		>=3.6,<3.7
REVISION-main =		0

CONFIGURE_ARGS +=	--with-ensurepip=no

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.6

.include <bsd.port.mk>

