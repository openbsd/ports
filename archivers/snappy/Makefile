# $OpenBSD: Makefile,v 1.11 2018/10/24 14:27:57 sthen Exp $

COMMENT =	fast compression/decompression library

GH_TAGNAME =	1.1.7
GH_PROJECT =	snappy
GH_ACCOUNT =	google
REVISION =	0

SHARED_LIBS =	snappy	0.0	# 4.1

CATEGORIES =	archivers

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DSNAPPY_BUILD_TESTS=OFF

# Requires gtest to be linked in
NO_TEST =		Yes

.include <bsd.port.mk>
