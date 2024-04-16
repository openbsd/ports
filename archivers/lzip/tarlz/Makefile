COMMENT =		archiver based on tar and lzip multimembers

DISTNAME =		tarlz-0.25
REVISION =		0

HOMEPAGE =		https://lzip.nongnu.org/tarlz.html
SITES =			${SITE_SAVANNAH:=lzip/tarlz/}

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lz m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		archivers/lzip/lzlib

.include <bsd.port.mk>
