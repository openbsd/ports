V =		1.21.6
COMMENT =	blocking, shuffling, fast and lossless compression library
PKGNAME =	blosc-${V}
CATEGORIES =	archivers

SHARED_LIBS +=	blosc                     2.0 # 0.0

GH_ACCOUNT =	Blosc
GH_PROJECT =	c-blosc
GH_TAGNAME =	v${V}
REVISION =	0

HOMEPAGE =	https://blosc.org/
MAINTAINER =	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += lz4 pthread snappy z zstd

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

LIB_DEPENDS =	archivers/lz4 \
		archivers/snappy \
		archivers/zstd

CONFIGURE_ARGS =	-DPREFER_EXTERNAL_LZ4=ON \
			-DDEACTIVATE_SNAPPY=OFF \
			-DPREFER_EXTERNAL_ZLIB=ON \
			-DPREFER_EXTERNAL_ZSTD=ON

.include <bsd.port.mk>
