# $OpenBSD: Makefile,v 1.42 2020/05/17 16:35:01 rsadowski Exp $

COMMENT =	OpenStreetMap editor
REVISION =	1

GH_ACCOUNT =	openstreetmap
GH_PROJECT =	merkaartor
GH_TAGNAME =	0.18.4

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes
MODULES =	devel/qmake x11/qt5
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# spatialite is marked as non-working
LIB_DEPENDS =	devel/proj \
		x11/qt5/qtsvg \
		geo/gdal

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c gdal m proj z

# C++11
COMPILER =		base-clang ports-gcc

#generate the .qm files from the .ts files before configure runs
pre-configure:
	cd ${WRKSRC} && lrelease-qt5 src/src.pro

.include <bsd.port.mk>
