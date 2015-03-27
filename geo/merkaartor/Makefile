# $OpenBSD: Makefile,v 1.18 2015/03/27 08:11:27 ajacoutot Exp $

COMMENT =	OpenStreetMap editor

DISTNAME =	merkaartor-0.18.1
EXTRACT_SUFX =	.tar.bz2
SHARED_ONLY =	Yes
REVISION =	0

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://merkaartor.be/attachments/download/301/

NO_TEST =	Yes
MODULES =	devel/gettext x11/qt4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/proj geo/gdal

WANTLIB += QtGui QtNetwork QtSvg QtWebKit QtXml c m proj pthread gdal
WANTLIB += stdc++ z ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 PROJ=1 NODEBUG=1 RELEASE=1 \
	PREFIX=${WRKINST}${PREFIX} TRANSDIR_MERKAARTOR=${WRKINST}/${PREFIX}/share/merkaartor/translations

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
