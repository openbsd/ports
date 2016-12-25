# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:14 zhuk Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components

MULTI_PACKAGES =	-main -examples -qch -html

SHARED_LIBS =	Qt5SerialPort		2.0

WANTLIB =		m pthread Qt5Core

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
