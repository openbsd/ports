# $OpenBSD: Makefile,v 1.4 2017/07/26 22:45:34 sthen Exp $

QT5NAME =		QtSVG
REVISION =		0
COMMENT-main =		SVG support for Qt5

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.1

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m pthread z

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
