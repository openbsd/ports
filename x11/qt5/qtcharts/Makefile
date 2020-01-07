# $OpenBSD: Makefile,v 1.9 2020/01/07 20:22:07 zhuk Exp $

QT5NAME =		QtCharts
COMMENT-main =		Qt5 components for drawing 2D charts
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Charts		0.1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += Qt5Quick Qt5Widgets m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
