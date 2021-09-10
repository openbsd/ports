# $OpenBSD: Makefile,v 1.47 2021/09/10 06:45:01 landry Exp $

COMMENT =	OpenStreetMap editor

GH_ACCOUNT =	openstreetmap
GH_PROJECT =	merkaartor
GH_TAGNAME =	0.19.0

CATEGORIES =	geo x11

HOMEPAGE =	http://www.merkaartor.be/
MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

NO_TEST =	Yes
MODULES =	devel/cmake x11/qt5
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# spatialite is marked as non-working
LIB_DEPENDS =	devel/proj \
		x11/qt5/qtsvg \
		graphics/exiv2 \
		geo/gdal

WANTLIB += ${COMPILER_LIBCXX} Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c exiv2 gdal m proj

# C++11
COMPILER =		base-clang ports-gcc

.include <bsd.port.mk>
