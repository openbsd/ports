# $OpenBSD: Makefile,v 1.17 2017/09/07 13:41:11 sthen Exp $

SHARED_LIBS +=	lz4                       2.0

COMMENT=	fast BSD-licensed data compression

GH_ACCOUNT=	lz4
GH_PROJECT=	lz4
GH_TAGNAME=	v1.8.0
REVISION=	0

CATEGORIES=	archivers

HOMEPAGE=	https://fastcompression.blogspot.com/p/lz4.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# library: BSD, tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		MANDIR="${PREFIX}/man/man1" \
		SONAME_FLAGS= \
		SHARED_EXT_VER="so.${LIBlz4_VERSION}"
FAKE_FLAGS=	PREFIX=${PREFIX}
CFLAGS+=	-DLZ4_FORCE_MEMORY_ACCESS=1

post-install:
	mv ${PREFIX}/libdata/pkgconfig/* ${PREFIX}/lib/pkgconfig/
	rmdir ${PREFIX}/libdata/pkgconfig
	rm ${PREFIX}/lib/liblz4.so{.1,}

.include <bsd.port.mk>
