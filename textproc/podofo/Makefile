COMMENT=	library and tools to modify and parse PDF documents

DISTNAME=	podofo-0.9.8

SHARED_LIBS +=	podofo                    4.0 # 0.9.8

CATEGORIES=	textproc

HOMEPAGE=	http://podofo.sourceforge.net/

# GPLv2+ (tools) LGPLv2+ (lib)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto fontconfig freetype idn
WANTLIB += jpeg m png ssl tiff unistring z

SITES=		${SITE_SOURCEFORGE:=podofo/}

MODULES=	devel/cmake

# C++
COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	converters/libunistring \
		devel/libidn \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

# only for tests
BUILD_DEPENDS=	devel/cppunit

CXXFLAGS =	-I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib

CONFIGURE_ARGS+=	-DFREETYPE_INCLUDE_DIR=${X11BASE}/include/freetype2 \
			-DPODOFO_BUILD_SHARED=True \
			-DPODOFO_BUILD_STATIC=True

post-extract:
	rm ${WRKSRC}/cmake/modules/FindZLIB.cmake

do-test:
	${WRKBUILD}/test/unit/podofo-test

.include <bsd.port.mk>
