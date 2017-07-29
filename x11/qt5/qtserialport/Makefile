# $OpenBSD: Makefile,v 1.6 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6
REVISION-main =		1
REVISION-examples =	0

MULTI_PACKAGES =	-main -examples

SHARED_LIBS =	Qt5SerialPort		2.1

WANTLIB =  ${COMPILER_LIBCXX} m pthread Qt5Core

FLAVORS =		debug

.include <bsd.port.mk>
