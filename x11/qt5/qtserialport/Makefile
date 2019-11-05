# $OpenBSD: Makefile,v 1.10 2019/11/05 10:18:54 rsadowski Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5SerialPort		2.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

FLAVORS =		debug

.include <bsd.port.mk>
