# $OpenBSD: Makefile,v 1.1.1.1 2017/06/15 08:28:52 zhuk Exp $

QT5NAME =		QtDataVis3D
COMMENT-main =		Qt5 3D data visualization components

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5DataVisualization	0.0

WANTLIB += ${LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
