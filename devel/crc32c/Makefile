COMMENT =		CRC32 implementation in hardware
CATEGORIES =		devel

GH_ACCOUNT =		google
GH_PROJECT =		crc32c
GH_TAGNAME =		1.1.2

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

SHARED_LIBS +=		crc32c	0.0	# 1.1.0

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} m

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

# all three expect bundled but nonexistent sources
CONFIGURE_ARGS +=	-DCRC32C_BUILD_TESTS=OFF \
			-DCRC32C_BUILD_BENCHMARKS=OFF \
			-DCRC32C_USE_GLOG=OFF

.include <bsd.port.mk>
