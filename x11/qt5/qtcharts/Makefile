# $OpenBSD: Makefile,v 1.4 2017/07/29 00:07:14 zhuk Exp $

QT5NAME =		QtCharts
REVISION =		0
COMMENT-main =		Qt5 components for drawing 2D charts

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Charts		0.0

WANTLIB =  ${COMPILER_LIBCXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB += m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
