# $OpenBSD: Makefile,v 1.44 2012/08/04 14:43:37 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	DTP program
DISTNAME=	scribus-1.4.1
CATEGORIES=	print
REVISION=	0

HOMEPAGE=	http://www.scribus.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	QtGui QtNetwork QtXml aspell c cairo cups execinfo
WANTLIB +=	fontconfig freetype jpeg lcms2 m pthread python2.7 stdc++
WANTLIB +=	tiff util xml2 z ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scribus/}

EXTRACT_SUFX=	.tar.bz2

MODULES=	x11/qt4 \
		devel/cmake \
		lang/python

MODPY_VERSION=	2.7
MODPY_RUNDEP=	No

BUILD_DEPENDS=	devel/boost
RUN_DEPENDS=	misc/shared-mime-info \
		devel/desktop-file-utils \
		${MODPY_TKINTER_DEPENDS} \
		textproc/antiword \
		print/ghostscript/gnu \
		graphics/py-Imaging
LIB_DEPENDS= graphics/jpeg \
		graphics/lcms2 \
		graphics/tiff \
		${MODPY_LIB_DEPENDS} \
		print/cups,-libs \
		textproc/libxml \
		textproc/aspell/core \
		devel/libexecinfo

FLAVORS=	debug
FLAVOR?=

WRKDIST=	${WRKDIR}/Scribus

CONFIGURE_ARGS +=	-DCMAKE_SKIP_RPATH:BOOL=1 \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_C_FLAGS="${CFLAGS}"

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=-DWANT_DEBUG=1
.endif

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	@${INSTALL_DATA} ${WRKSRC}/scribus.desktop \
		${PREFIX}/share/applications/scribus.desktop

.include <bsd.port.mk>
