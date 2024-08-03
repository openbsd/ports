COMMENT =	fast compression/decompression library

GH_TAGNAME =	1.1.10
GH_PROJECT =	snappy
GH_ACCOUNT =	google
REVISION =	1

SHARED_LIBS =	snappy	3.0

CATEGORIES =	archivers

HOMEPAGE =	https://google.github.io/snappy/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON \
			-DINSTALL_GTEST=OFF \
			-DSNAPPY_BUILD_BENCHMARKS=OFF

.if ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS +=	-DSNAPPY_HAVE_NEON=OFF \
			-DSNAPPY_HAVE_NEON_CRC32=OFF
.endif

# used in tests
BUILD_DEPENDS =		archivers/lz4 \
			archivers/lzo2

CXXFLAGS +=		-I${LOCALBASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

# expects submodule/cannot use system library
DIST_TUPLE =		github	google	googletest	e40661d89b051e9ef4eb8a2420b74bf78b39ef41 \
			third_party/googletest/	# BSD

.include <bsd.port.mk>
