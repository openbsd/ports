# $OpenBSD: Makefile,v 1.11 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtSerialBus
COMMENT-main =		Qt5 API for accessing serial bus devices

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialBus               1.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5SerialPort
WANTLIB += c m

LIB_DEPENDS =		x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

FLAVORS =		debug

.include <bsd.port.mk>
