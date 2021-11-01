# $OpenBSD: Makefile,v 1.21 2021/11/01 16:56:25 sthen Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.8
PATCHLEVEL =		.12
SHARED_LIBS =		python3.8 0.0
VERSION_SPEC =		>=3.8,<3.9

REVISION-main =		2

# override "@comment" setting for the MODPY_DEFAULT_VERSION_3 version
PY_DEFAULTONLY =


CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.8

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
