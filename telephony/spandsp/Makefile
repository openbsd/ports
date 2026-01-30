COMMENT=	DSP library for telephony

DISTNAME=	spandsp-0.0.6
REVISION=	2
CATEGORIES=	telephony
SITES=		https://www.soft-switch.org/downloads/spandsp/

SHARED_LIBS=	spandsp	7.0

HOMEPAGE=	https://www.soft-switch.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} Lerc c jpeg lzma m pthread tiff z zstd

COMPILER=	base-clang ports-gcc base-gcc

LIB_DEPENDS+=	graphics/tiff

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# Test suite included, but requires many build dependencies
# and proprietary files from standards bodies.
NO_TEST=	Yes

DOCS=		README DueDiligence

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spandsp
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/spandsp
.endfor

.include <bsd.port.mk>
