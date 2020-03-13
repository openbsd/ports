# $OpenBSD: Makefile,v 1.11 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtSensors
COMMENT-main =		Qt5 hardware sensors support

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5Sensors                 3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Qml
WANTLIB += m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

.include <bsd.port.mk>
