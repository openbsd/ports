# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:18 zhuk Exp $

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.0

MULTI_PACKAGES =	-main -examples -qch -html

WANTLIB =		GL Qt5Core Qt5Gui Qt5Widgets m pthread z

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
