# $OpenBSD: Makefile,v 1.3 2020/10/23 16:22:32 landry Exp $

COMMENT =	zip manipulation library

GH_ACCOUNT =	nmoinvaz
GH_PROJECT =	minizip
GH_TAGNAME =	2.10.1

SHARED_LIBS +=	minizip 0.1 #2.5
CATEGORIES =	archivers

# zlib
PERMIT_PACKAGE =Yes

MODULES =	devel/cmake

# tries to fetch zstd source during build
# bundled lzma is patched
CONFIGURE_ARGS =-DMZ_LZMA=OFF \
		-DMZ_BUILD_TEST=ON \
		-DMZ_BUILD_UNIT_TEST=ON

LIB_DEPENDS =	converters/libiconv \
		archivers/zstd \
		archivers/bzip2

WANTLIB +=	bz2 c iconv z zstd

.include <bsd.port.mk>
