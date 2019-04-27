# $OpenBSD: Makefile,v 1.2 2019/04/27 21:28:30 sthen Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.7
PATCHLEVEL =		.3
SHARED_LIBS =		python3.7m 0.0
VERSION_SPEC =		>=3.7,<3.8

REVISION =		0

CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.7

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
