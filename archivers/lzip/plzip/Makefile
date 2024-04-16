COMMENT =		multi-threaded data compressor based on lzlib

DISTNAME =		plzip-1.11
REVISION =		0

HOMEPAGE =		https://lzip.nongnu.org/plzip.html
SITES =			${SITE_SAVANNAH:=lzip/plzip/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
