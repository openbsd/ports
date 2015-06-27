# $OpenBSD: Makefile,v 1.19 2015/06/27 06:59:01 landry Exp $

COMMENT =	OpenStreetMap editor

GH_ACCOUNT =	openstreetmap
GH_PROJECT =	merkaartor
GH_TAGNAME =	0.18.1
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
SHARED_ONLY =	Yes
REVISION =	1

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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
