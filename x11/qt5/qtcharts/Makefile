# $OpenBSD: Makefile,v 1.8 2019/11/05 10:18:53 rsadowski Exp $

QT5NAME =		QtCharts
COMMENT-main =		Qt5 components for drawing 2D charts

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Charts		0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
