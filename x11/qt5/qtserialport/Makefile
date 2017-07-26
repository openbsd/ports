# $OpenBSD: Makefile,v 1.5 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtSerialPort
REVISION =		0
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5SerialPort		2.1

WANTLIB =  ${COMPILER_LIBCXX} m pthread Qt5Core

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
