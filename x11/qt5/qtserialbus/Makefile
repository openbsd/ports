# $OpenBSD: Makefile,v 1.8 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices
REVISION-main =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =		Qt5SerialBus		0.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5SerialPort
WANTLIB += c m

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

# TODO: port/reimplement SocketCAN?

.include <bsd.port.mk>
