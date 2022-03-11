COMMENT =	fast compression/decompression library

GH_TAGNAME =	1.1.9
GH_PROJECT =	snappy
GH_ACCOUNT =	google

SHARED_LIBS =	snappy	2.0	# 4.1

CATEGORIES =	archivers

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DSNAPPY_BUILD_BENCHMARKS=OFF \
			-DSNAPPY_BUILD_TESTS=OFF

# Requires git submodules
NO_TEST =		Yes

.include <bsd.port.mk>
