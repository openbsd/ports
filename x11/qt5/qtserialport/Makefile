# $OpenBSD: Makefile,v 1.8 2019/03/08 20:00:39 cwen Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6
REVISION-main =		0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5SerialPort		2.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core m

FLAVORS =		debug

.include <bsd.port.mk>
