COMMENT=	library and tools to modify and parse PDF documents

V =		0.10.5
DIST_TUPLE +=	github podofo podofo ${V} .
DISTNAME=	podofo-${V}

SHARED_LIBS +=	podofo                    5.0 # 0.10.5

CATEGORIES=	textproc

HOMEPAGE=	https://podofo.github.io/podofo/documentation/

# GPLv2+ (tools) LGPLv2+ (lib)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto fontconfig freetype idn
WANTLIB += jpeg m png ssl tiff xml2 z

MODULES=	devel/cmake

# C++
COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	devel/libidn \
		graphics/jpeg \
		graphics/png \
		graphics/tiff \
		textproc/libxml

# only for tests
BUILD_DEPENDS=	devel/catch2

CONFIGURE_ARGS =	-DPODOFO_BUILD_TOOLS=True \
			-DPODOFO_HAVE_JPEG_LIB=True \
			-DPODOFO_HAVE_PNG_LIB=True \
			-DPODOFO_HAVE_TIFF_LIB=True

.include <bsd.port.mk>
