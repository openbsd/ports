COMMENT =	fast compression/decompression library

GH_TAGNAME =	1.1.10
GH_PROJECT =	snappy
GH_ACCOUNT =	google
REVISION =	2

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
BUILD_DEPENDS =		devel/gtest:patch
GTEST_WRKSRC =		${WRKDIR}/devel/gtest/googletest-1.15.2
GTEST_THIRD =		${WRKSRC}/third_party/googletest

post-extract:
	rmdir ${GTEST_THIRD}
	ln -sf ${GTEST_WRKSRC} ${GTEST_THIRD}

.include <bsd.port.mk>
