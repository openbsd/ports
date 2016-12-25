# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:18 zhuk Exp $

QT5NAME =		QtSensors
COMMENT-main =		Qt5 hardware sensors support

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =		Qt5Sensors		2.0
#SHARED_LIBS +=		gruesensor		2.0

WANTLIB =		GL Qt5Core Qt5Gui Qt5Network Qt5Qml m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
