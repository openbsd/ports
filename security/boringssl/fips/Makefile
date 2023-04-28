GH_ACCOUNT =	google
GH_PROJECT =	boringssl
GH_COMMIT =	0c6f40132b828e92ba365c6b7680e32820c63fa7
DISTNAME =	boringssl-fips-20220613
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} c m

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX}/eboringssl-fips

# XXX picked up for tests, needs more love
BUILD_DEPENDS =		lang/go

.include <bsd.port.mk>
