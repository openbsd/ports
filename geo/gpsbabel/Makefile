# $OpenBSD: Makefile,v 1.31 2017/07/26 22:45:22 sthen Exp $

COMMENT-main=		GPS waypoint, track, and route conversion tool
COMMENT-tk=		Tk front-end to gpsbabel
COMMENT-qt=		Qt front-end to gpsbabel

VERSION=		1.4.4
DISTNAME=		gpsbabel-${VERSION}
PKGNAME-main=		gpsbabel-${VERSION}
PKGNAME-tk=		gpsbabel-tk-${VERSION}
PKGNAME-qt=		gpsbabel-qt-${VERSION}
CATEGORIES=		geo

REVISION-main=		1
REVISION-tk=		1
REVISION-qt=		1

HOMEPAGE=		http://www.gpsbabel.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.linklevel.net/distfiles/

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf qmake
CONFIGURE_ARGS+=	--with-zlib=system \
			--with-shapefile=system \
			--with-doc=./babelweb
#CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
#			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
#			WEB=${WRKSRC} 
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			WEB=${WRKSRC}

MULTI_PACKAGES=		-main -tk -qt

MODULES=		devel/qmake x11/tk x11/qt4
MODQMAKE_PROJECTS =	gui/app.pro
SEPARATE_BUILD=		No

BUILD_DEPENDS=		textproc/docbook-xsl
LIB_DEPENDS-main=	devel/libusb-compat \
			devel/shapelib

cWANTLIB = 		c m pthread
WANTLIB-main += expat shp>=1 usb z ${cWANTLIB}
WANTLIB-tk = 
WANTLIB-qt += ICE QtCore QtGui QtNetwork QtWebKit QtXml SM X11 Xext Xi
WANTLIB-qt += Xinerama Xrender fontconfig freetype ${COMPILER_LIBCXX} ${cWANTLIB}

LIB_DEPENDS-tk=
PKG_ARCH-tk=	*
RUN_DEPENDS-tk=		geo/gpsbabel \
			${MODTK_RUN_DEPENDS}
RUN_DEPENDS-qt=		geo/gpsbabel \
			devel/desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/guibabel
	@perl -pi -e 's/gpsbabelfe-bin/guibabel-qt/' \
		${WRKSRC}/gui/gpsbabel.desktop

post-build:
	cd ${WRKBUILD} && make doc
	${MODQMAKE_build}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/gpsbabel ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/gui/objects/gpsbabelfe-bin \
		${PREFIX}/bin/guibabel-qt
	${INSTALL_SCRIPT} ${WRKSRC}/guibabel ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/babelweb/htmldoc-*/*.html \
		${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/gpsbabel
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/gui/gpsbabel.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/gui/images/appicon.png \
		${PREFIX}/share/pixmaps/gpsbabel.png

.include <bsd.port.mk>
