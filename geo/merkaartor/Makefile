# $OpenBSD: Makefile,v 1.14 2012/01/06 16:46:13 landry Exp $

COMMENT =	OpenStreetMap editor

DISTNAME =	merkaartor-0.17.2
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://merkaartor.be/attachments/download/253/

NO_REGRESS =	Yes
MODULES =	devel/gettext x11/qt4
BUILD_DEPENDS = devel/boost
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

LIB_DEPENDS =	x11/qt4 devel/proj

WANTLIB += QtGui QtNetwork QtSvg QtWebKit QtXml c m proj pthread
WANTLIB += stdc++ z ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 GDAL=0 PROJ=1 NODEBUG=1 \
	PREFIX=${WRKINST}${PREFIX} TRANSDIR_MERKAARTOR=${WRKINST}/${PREFIX}/share/merkaartor/translations

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
