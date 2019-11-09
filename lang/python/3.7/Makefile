# $OpenBSD: Makefile,v 1.7 2019/11/09 17:28:58 pirofti Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.7
PATCHLEVEL =		.5
SHARED_LIBS =		python3.7m 0.0
VERSION_SPEC =		>=3.7,<3.8

REVISION-main =		0
REVISION-gdbm =		0

CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

DEBUG_PACKAGES =	-main -gdbm
DEBUG_FILES =		bin/python${VERSION} \
			lib/libpython${VERSION}m.so.${LIBpython3.7m_VERSION} \
			lib/python${VERSION}/lib-dynload/_gdbm.so
DEBUG_CONFIGURE_ARGS =	CFLAGS="${CFLAGS} -g"

PORTROACH =             limit:^3\.7

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
