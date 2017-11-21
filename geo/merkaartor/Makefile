# $OpenBSD: Makefile,v 1.28 2017/11/21 00:13:01 naddy Exp $

COMMENT =	OpenStreetMap editor

GH_ACCOUNT =	openstreetmap
GH_PROJECT =	merkaartor
GH_TAGNAME =	0.18.3
REVISION =	1

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST =	Yes
MODULES =	x11/qt4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# spatialite is marked as non-working
LIB_DEPENDS =	devel/proj \
		geo/gdal

WANTLIB += QtGui QtNetwork QtSvg QtWebKit QtXml c iconv intl m proj pthread gdal
WANTLIB += ${COMPILER_LIBCXX} z ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

do-configure:
	cd ${WRKSRC} && env ${CONFIGURE_ENV} qmake4 PROJ=1 NODEBUG=1 RELEASE=1 \
	PREFIX=${WRKINST}${PREFIX} TRANSDIR_MERKAARTOR=${WRKINST}/${PREFIX}/share/merkaartor/translations

pre-build:
	cd ${WRKSRC}/translations && ${MAKE} release

.include <bsd.port.mk>
