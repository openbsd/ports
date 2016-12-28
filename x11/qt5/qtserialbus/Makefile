# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =		Qt5SerialBus		0.0

WANTLIB-main =		Qt5Core Qt5Network Qt5SerialPort c m pthread

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

# TODO: port/reimplement SocketCAN?

.include <bsd.port.mk>
