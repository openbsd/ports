# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtX11Extras
REVISION =		0
COMMENT-main =		X11-specific parts of Qt

SHARED_LIBS =		Qt5X11Extras		2.1

MULTI_PACKAGES =	-main -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
