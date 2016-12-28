# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtSerialPort
COMMENT-main =		Qt5 serial ports access components
REVISION-qch =		0
REVISION-html =		0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

SHARED_LIBS =	Qt5SerialPort		2.0

WANTLIB =		m pthread Qt5Core

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples
FLAVOR ?=

.include <bsd.port.mk>
