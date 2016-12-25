# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:18 zhuk Exp $

QT5NAME =		QtX11Extras
COMMENT-main =		X11-specific parts of Qt

SHARED_LIBS =		Qt5X11Extras		2.0

MULTI_PACKAGES =	-main -qch -html

WANTLIB =		GL Qt5Core Qt5Gui m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
