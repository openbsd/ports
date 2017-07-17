# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:39 zhuk Exp $

QT5NAME =		QtX11Extras
COMMENT-main =		X11-specific parts of Qt

SHARED_LIBS =		Qt5X11Extras		2.1

MULTI_PACKAGES =	-main -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
