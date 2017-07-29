# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtSerialBus
REVISION =		0
COMMENT-main =		Qt5 API for accessing serial bus devices

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5SerialBus		0.1

WANTLIB =  ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5SerialPort c m pthread

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

# TODO: port/reimplement SocketCAN?

.include <bsd.port.mk>
