# $OpenBSD: Makefile,v 1.8 2016/06/29 16:14:42 espie Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.5
PATCHLEVEL =		.1
REVISION =		2
SHARED_LIBS =		python3.5m 0.0
VERSION_SPEC =		>=3.5,<3.6

CONFIGURE_ARGS +=	--with-ensurepip=no

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.5

.include <bsd.port.mk>
