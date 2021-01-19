# $OpenBSD: Makefile,v 1.11 2021/01/19 06:16:30 rsadowski Exp $

QT5NAME =		QtCharts
COMMENT-main =		Qt5 components for drawing 2D charts

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Charts                 1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5QmlModels Qt5Quick Qt5Widgets m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
