# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtX11Extras
COMMENT-main =		X11-specific parts of Qt
REVISION-qch =		0
REVISION-html =		0

SHARED_LIBS =		Qt5X11Extras		2.0

MULTI_PACKAGES =	-main -qch -html -docindex

WANTLIB =		GL Qt5Core Qt5Gui m pthread

FLAVORS =		debug
PSEUDO_FLAVORS =	no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
