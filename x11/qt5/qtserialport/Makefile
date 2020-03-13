# $OpenBSD: Makefile,v 1.11 2020/03/13 16:53:52 rsadowski Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6

MULTI_PACKAGES =	-main -examples

SHARED_LIBS +=  Qt5SerialPort           3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

FLAVORS =		debug

.include <bsd.port.mk>
