# $OpenBSD: Makefile,v 1.8 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtSensors
COMMENT-main =		Qt5 hardware sensors support
REVISION-main =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5Sensors		2.2

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += m


LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
