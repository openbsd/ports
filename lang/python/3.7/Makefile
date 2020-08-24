# $OpenBSD: Makefile,v 1.19 2020/08/24 15:00:29 kmos Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.7
PATCHLEVEL =		.9
SHARED_LIBS =		python3.7m 0.0
VERSION_SPEC =		>=3.7,<3.8

CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE =	autoconf

PORTROACH =             limit:^3\.7

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
