# $OpenBSD: Makefile,v 1.1.1.1 2017/07/10 14:07:40 zhuk Exp $

QT5NAME =		QtCharts
COMMENT-main =		Qt5 components for drawing 2D charts

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =		Qt5Charts		0.0

WANTLIB =  ${LIBECXX}
WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5Qml Qt5Quick Qt5Widgets
WANTLIB += m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
