# $OpenBSD: Makefile,v 1.12 2021/11/15 21:23:32 rsadowski Exp $

QT5NAME =		QtSensors
COMMENT-main =		Qt5 hardware sensors support

REVISION-main =		0
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Sensors                 3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
