# $OpenBSD: Makefile,v 1.15 2021/11/03 19:07:18 sthen Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.9
PATCHLEVEL =		.7
SHARED_LIBS =		python3.9 0.0
VERSION_SPEC =		>=3.9,<3.10
#PSUBDIR =		python/3.9.0

REVISION-main =		5
REVISION-idle =		1

# override "@comment" setting for the MODPY_DEFAULT_VERSION_3 version
PY_DEFAULTONLY =


CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.9

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
