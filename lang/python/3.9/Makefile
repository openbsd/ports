# $OpenBSD: Makefile,v 1.3 2021/02/16 18:50:26 tb Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.9
PATCHLEVEL =		.1
SHARED_LIBS =		python3.9 0.0
VERSION_SPEC =		>=3.9,<3.10
REVISION =		0
#PSUBDIR =		python/3.9.0

CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.9

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
