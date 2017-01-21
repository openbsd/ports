# $OpenBSD: Makefile,v 1.3 2017/01/21 18:25:02 zhuk Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
PKGSPEC-main =		qtserialport->=5.6
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5SerialPort		2.0

WANTLIB =		m pthread Qt5Core

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
