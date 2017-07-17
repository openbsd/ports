# $OpenBSD: Makefile,v 1.4 2017/07/17 08:34:38 zhuk Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5SerialPort		2.1

WANTLIB =  ${COMPILER_LIBCXX} m pthread Qt5Core

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
