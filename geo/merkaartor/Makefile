# $OpenBSD: Makefile,v 1.10 2011/01/10 09:34:24 landry Exp $

COMMENT =	OpenStreetMap editor

DISTNAME =	merkaartor-0.17.0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://merkaartor.be/attachments/download/192/

NO_REGRESS =	Yes
MODULES =	devel/gettext x11/qt4
BUILD_DEPENDS = devel/boost
RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	x11/qt4 devel/proj

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 m png pthread
WANTLIB += stdc++ z QtGui QtNetwork QtSvg QtXml QtWebKit proj

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 GDAL=0 PROJ=1 NODEBUG=1 \
	PREFIX=${WRKINST}${PREFIX} TRANSDIR_MERKAARTOR=${WRKINST}/${PREFIX}/share/merkaartor/translations

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
