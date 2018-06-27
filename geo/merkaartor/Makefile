# $OpenBSD: Makefile,v 1.31 2018/06/27 21:03:52 espie Exp $

COMMENT =	OpenStreetMap editor

GH_ACCOUNT =	openstreetmap
GH_PROJECT =	merkaartor
GH_TAGNAME =	0.18.3
REVISION =	3

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

NO_TEST =	Yes
MODULES =	devel/qmake x11/qt4
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# spatialite is marked as non-working
LIB_DEPENDS =	devel/proj \
		geo/gdal

WANTLIB += QtGui QtNetwork QtSvg QtWebKit QtXml c iconv intl m proj pthread gdal
WANTLIB += ${COMPILER_LIBCXX} z ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype

#generate the .qm files from the .ts files before configure runs
pre-configure:
	cd ${WRKSRC} && lrelease4 src/src.pro

.include <bsd.port.mk>
