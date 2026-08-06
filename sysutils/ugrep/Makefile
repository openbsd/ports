COMMENT =	ultra fast universal grep
CATEGORIES =	textproc sysutils

GH_ACCOUNT =	Genivia
GH_PROJECT =	ugrep
GH_TAGNAME =	v7.8.3

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} brotlidec brotlienc bz2 c lz4 lzma
WANTLIB += m pcre2-8 z zstd

# C++11
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	archivers/brotli \
		archivers/bzip2 \
		archivers/lz4 \
		archivers/xz \
		archivers/zstd \
		devel/pcre2
TEST_DEPENDS =	shells/bash

CONFIGURE_STYLE =	gnu

.if ${MACHINE_ARCH:Marm}
CONFIGURE_ARGS +=	--disable-neon
.endif
.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS +=	--disable-sse2
.endif

USE_GMAKE =	Yes

.include <bsd.port.mk>
