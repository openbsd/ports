# $OpenBSD: Makefile,v 1.1 2019/04/21 09:33:32 sthen Exp $

# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

VERSION =		3.7
PATCHLEVEL =		.3
SHARED_LIBS =		python3.7m 0.0
VERSION_SPEC =		>=3.7,<3.8

CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ARGS +=	--enable-loadable-sqlite-extensions

CONFIGURE_STYLE = autoconf

PORTROACH =             limit:^3\.7

TEST_IS_INTERACTIVE =	Yes

# when making this the default MODPY_VERSION_3, these need to be
# uncommented in PLIST-main:
#
# bin/pydoc3 bin/python3 bin/python3-config lib/pkgconfig/python3.pc
# @man man/man1/python3.1

.include <bsd.port.mk>
