# $OpenBSD: Makefile,v 1.9 2017/07/26 22:45:14 sthen Exp $

COMMENT =	fast compression/decompression library

GH_TAGNAME =	1.1.6
GH_PROJECT =	snappy
GH_ACCOUNT =	google
REVISION =	0

SHARED_LIBS =	snappy	0.0	# 4.1

CATEGORIES =	archivers

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

BUILD_DEPENDS=          ${MODGNU_AUTOCONF_DEPENDS} \
                        ${MODGNU_AUTOMAKE_DEPENDS} \
                        devel/libtool
# XXX Depends on libtool macros

USE_GMAKE =		Yes
AUTOMAKE_VERSION =	1.14
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE = 	autoconf no-autoheader

CONFIGURE_ARGS += --disable-gtest

post-patch:
	cd ${WRKBUILD} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
