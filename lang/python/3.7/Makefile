# $OpenBSD: Makefile,v 1.11 2019/11/11 17:47:42 ajacoutot Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.7
PATCHLEVEL =		.5
SHARED_LIBS =		python3.7m 0.0
VERSION_SPEC =		>=3.7,<3.8

REVISION-main =		3
REVISION-gdbm =		3
REVISION-tkinter =	1

CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.7

TEST_IS_INTERACTIVE =	Yes

.include <bsd.port.mk>
