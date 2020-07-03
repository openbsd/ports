# $OpenBSD: Makefile,v 1.17 2020/07/03 21:12:53 sthen Exp $

# XXX qmake picks up Cocoa/Cocoa.h even though it's apparently unused
DPB_PROPERTIES =	nojunk

COMMENT =		tile map editor

GH_ACCOUNT =		bjorn
GH_PROJECT =		tiled
GH_TAGNAME =		v1.3.1
REVISION =		0

SHARED_LIBS +=		tiled                     1.0 # 1.0

CATEGORIES =		editors games

HOMEPAGE =		https://www.mapeditor.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Widgets c m ${MODPY_WANTLIB} z

MODULES =		devel/qmake \
			lang/python \
			x11/qt5

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS =		x11/qt5/qtdeclarative

BUILD_DEPENDS =		x11/qt5/qtquickcontrols

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic \
			x11/qt5/qtquickcontrols

NO_TEST=		Yes

.include <bsd.port.mk>
