# $OpenBSD: Makefile,v 1.14 2020/05/07 14:24:53 sthen Exp $

BROKEN-arm=	build stuck in main.cpp

COMMENT=	library and tools to modify and parse PDF documents

DISTNAME=	podofo-0.9.5
REVISION=	3

SHARED_LIBS +=	podofo                    2.0 # 0.9

CATEGORIES=	textproc

HOMEPAGE=	http://podofo.sourceforge.net/

# GPLv2+ (tools) LGPLv2+ (lib)
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto fontconfig freetype idn jpeg m png pthread tiff z
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=podofo/}

MODULES=	devel/cmake 

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	devel/libidn \
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
