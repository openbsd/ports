# $OpenBSD: Makefile,v 1.39 2019/07/12 20:46:29 sthen Exp $

COMMENT =	OpenStreetMap editor

GH_ACCOUNT =	openstreetmap
GH_PROJECT =	merkaartor
GH_TAGNAME =	0.18.3
REVISION =	8

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
		x11/qt5/qtwebkit \
		x11/qt5/qtsvg \
		archivers/quazip,qt5 \
		geo/gdal

MODQMAKE_ARGS = SYSTEM_QUAZIP=1 SYSTEM_QUAZIP_LDFLAGS=-lquazip5

WANTLIB += GL Qt5Concurrent Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml
WANTLIB += c gdal m proj quazip5 z ${COMPILER_LIBCXX}

# C++11
COMPILER =		base-clang ports-gcc

# proj 6.0
# https://github.com/openstreetmap/merkaartor/issues/178
CXXFLAGS+=	-DACCEPT_USE_OF_DEPRECATED_PROJ_API_H=1

#generate the .qm files from the .ts files before configure runs
pre-configure:
	cd ${WRKSRC} && lrelease-qt5 src/src.pro

.include <bsd.port.mk>
