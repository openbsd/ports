# $OpenBSD: Makefile,v 1.48 2013/03/11 23:04:32 fgsch Exp $

SHARED_ONLY=	Yes

COMMENT=	DTP program
DISTNAME=	scribus-1.4.1
CATEGORIES=	print
REVISION=	2

HOMEPAGE=	http://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	QtGui QtNetwork QtXml aspell c cairo cups execinfo
WANTLIB +=	fontconfig freetype jpeg lcms2 m pthread stdc++
WANTLIB +=	tiff util xml2 z ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}

EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/qt4 \
		devel/cmake \
		lang/python

MODPY_VERSION=	2.7
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/boost
RUN_DEPENDS=	devel/desktop-file-utils \
		graphics/py-Imaging \
		print/ghostscript/gnu \
		textproc/antiword \
		misc/shared-mime-info \
		${MODPY_TKINTER_DEPENDS}
LIB_DEPENDS= 	devel/libexecinfo \
		graphics/lcms2 \
		graphics/tiff \
		print/cups,-libs \
		textproc/aspell/core \
		textproc/libxml \
		graphics/jpeg \
		${MODPY_LIB_DEPENDS}

FLAVORS=	debug
FLAVOR?=

WRKDIST=	${WRKDIR}/Scribus

CONFIGURE_ARGS +=	-DCMAKE_SKIP_RPATH:BOOL=1 \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_C_FLAGS="${CFLAGS}"

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=-DWANT_DEBUG=1
.endif

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/scribus.desktop \
		${PREFIX}/share/applications/scribus.desktop

.include <bsd.port.mk>
