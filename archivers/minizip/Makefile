COMMENT =	zip manipulation library

GH_ACCOUNT =	zlib-ng
GH_PROJECT =	minizip-ng
GH_TAGNAME =	4.0.8

PKGNAME =	minizip-${GH_TAGNAME}
REVISION =	0

SHARED_LIBS +=	minizip 3.2 # 4

CATEGORIES =	archivers

WANTLIB += bz2 c crypto iconv lzma ssl z zstd

# zlib
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

# C++ in tests
COMPILER =		base-clang ports-gcc

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DMZ_BUILD_TEST=ON \
			-DMZ_BUILD_UNIT_TEST=ON

BUILD_DEPENDS +=	devel/gtest

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			archivers/zstd \
			converters/libiconv

.include <bsd.port.mk>
