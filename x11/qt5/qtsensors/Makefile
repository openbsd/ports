# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =		QtSensors
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
