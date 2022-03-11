COMMENT =	zip manipulation library

GH_ACCOUNT =	zlib-ng
GH_PROJECT =	minizip-ng
GH_TAGNAME =	3.0.3

PKGNAME =	minizip-${GH_TAGNAME}

SHARED_LIBS +=	minizip 1.0 # 3

CATEGORIES =	archivers

WANTLIB += bz2 c crypto iconv lzma ssl z zstd

# zlib
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON \
			-DMZ_BUILD_TEST=ON \
			-DMZ_BUILD_UNIT_TEST=ON

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			archivers/zstd \
			converters/libiconv

# For the signing-related tests to succeed, you need to add the contents of
# test/test.pem to /etc/ssl/cert.pem.
NO_TEST =		No

.include <bsd.port.mk>
