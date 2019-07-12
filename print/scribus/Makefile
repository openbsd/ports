# $OpenBSD: Makefile,v 1.67 2019/07/12 20:48:57 sthen Exp $

COMMENT=	desktop publishing program
DISTNAME=	scribus-1.4.6
CATEGORIES=	print
REVISION=	3

HOMEPAGE=	https://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += QtGui QtNetwork QtXml c cairo cups fontconfig freetype
WANTLIB += hyphen jpeg lcms2 m podofo tiff xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}

EXTRACT_SUFX=	.tar.xz

MODULES=	x11/qt4 \
		devel/cmake \
		lang/python

MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/boost
RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-Pillow \
		print/ghostscript/gnu \
		textproc/antiword \
		misc/shared-mime-info \
		${MODPY_TKINTER_DEPENDS}
LIB_DEPENDS=	graphics/lcms2 \
		graphics/tiff \
		print/cups,-libs \
		textproc/hyphen \
		textproc/libxml \
		textproc/podofo \
		graphics/jpeg \
		${MODPY_LIB_DEPENDS}

FLAVORS=	debug
FLAVOR?=

CONFIGURE_ARGS +=	-DCMAKE_SKIP_RPATH:BOOL=1 \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DMANDIR="${LOCALBASE}/man/"

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=-DWANT_DEBUG=1
.endif

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/scribus.desktop \
		${PREFIX}/share/applications/scribus.desktop

.include <bsd.port.mk>
