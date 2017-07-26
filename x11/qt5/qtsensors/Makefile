# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtSensors
REVISION =		0
COMMENT-main =		Qt5 hardware sensors support

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =		Qt5Sensors		2.1
#SHARED_LIBS +=		gruesensor		2.0

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml m pthread

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
