COMMENT=	library and tools to modify and parse PDF documents

DISTNAME=	podofo-0.9.7

SHARED_LIBS +=	podofo                    3.0 # 0.9

CATEGORIES=	textproc

HOMEPAGE=	http://podofo.sourceforge.net/

# GPLv2+ (tools) LGPLv2+ (lib)
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c crypto fontconfig freetype idn
WANTLIB += jpeg m png ssl tiff unistring z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=podofo/}

MODULES=	devel/cmake 

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	converters/libunistring \
		devel/libidn \
		graphics/jpeg \
		graphics/png \
		graphics/tiff

CONFIGURE_ARGS+=	-DCMAKE_INCLUDE_PATH=${X11BASE}/include \
			-DCMAKE_LIBRARY_PATH=${X11BASE}/lib \
			-DFREETYPE_INCLUDE_DIR=${X11BASE}/include/freetype2 \
			-DPODOFO_BUILD_SHARED=True \
			-DPODOFO_BUILD_STATIC=True

post-extract:
	rm ${WRKSRC}/cmake/modules/FindZLIB.cmake

BUILD_DEPENDS=	devel/cppunit
do-test:
	${WRKBUILD}/test/unit/podofo-test

.include <bsd.port.mk>
