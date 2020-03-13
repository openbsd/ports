# $OpenBSD: Makefile,v 1.9 2020/03/13 16:53:50 rsadowski Exp $

QT5NAME =		QtDataVis3D
COMMENT-main =		Qt5 3D data visualization components

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5DataVisualization    1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
