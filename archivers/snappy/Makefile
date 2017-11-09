# $OpenBSD: Makefile,v 1.10 2017/11/09 15:07:08 jasper Exp $

COMMENT =	fast compression/decompression library

GH_TAGNAME =	1.1.7
GH_PROJECT =	snappy
GH_ACCOUNT =	google

SHARED_LIBS =	snappy	0.0	# 4.1

CATEGORIES =	archivers

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DSNAPPY_BUILD_TESTS=OFF

# Requires gtest to be linked in
NO_TEST =		Yes

.include <bsd.port.mk>
