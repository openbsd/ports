# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:18 zhuk Exp $

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =		Qt5SerialBus		0.0

WANTLIB-main =		Qt5Core Qt5Network Qt5SerialPort c m pthread

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

# TODO: port/reimplement SocketCAN?

.include <bsd.port.mk>
