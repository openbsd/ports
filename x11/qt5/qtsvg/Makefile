# $OpenBSD: Makefile,v 1.2 2016/12/28 01:41:24 zhuk Exp $

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5
REVISION-qch =		0
REVISION-html =		0

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.0

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =		GL Qt5Core Qt5Gui Qt5Widgets m pthread z

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
