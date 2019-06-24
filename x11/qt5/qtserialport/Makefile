# $OpenBSD: Makefile,v 1.9 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6
REVISION-main =		1

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5SerialPort		2.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

FLAVORS =		debug

.include <bsd.port.mk>
