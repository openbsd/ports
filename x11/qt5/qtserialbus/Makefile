# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtSerialBus
REVISION =		0
COMMENT-main =		Qt5 API for accessing serial bus devices

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =		Qt5SerialBus		0.1

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5SerialPort c m pthread

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

# TODO: port/reimplement SocketCAN?

.include <bsd.port.mk>
