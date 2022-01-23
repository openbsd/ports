# $OpenBSD: Makefile,v 1.4 2022/01/23 21:32:07 daniel Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		3.10.0
SHARED_LIBS =		python3.10 0.0
VERSION_SPEC =		>=3.10,<3.11
#PSUBDIR =		python/3.10.0

REVISION-main =		1


CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.10

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
