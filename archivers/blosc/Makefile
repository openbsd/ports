# $OpenBSD: Makefile,v 1.2 2020/04/07 12:47:39 martin Exp $

V =		1.18.1
COMMENT =	blocking, shuffling, fast and lossless compression library
PKGNAME =	blosc-${V}
CATEGORIES =	archivers

SHARED_LIBS +=	blosc                     1.0 # 1.0

GH_ACCOUNT =	Blosc
GH_PROJECT =	c-blosc
GH_TAGNAME =	v${V}

HOMEPAGE =	https://blosc.org/
MAINTAINER =	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += lz4 pthread snappy z zstd

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/lz4 \
		archivers/snappy \
		archivers/zstd

CONFIGURE_ARGS =	-DPREFER_EXTERNAL_LZ4=ON \
			-DPREFER_EXTERNAL_SNAPPY=ON \
			-DPREFER_EXTERNAL_ZLIB=ON \
			-DPREFER_EXTERNAL_ZSTD=ON

.include <bsd.port.mk>
