# $OpenBSD: Makefile,v 1.3 2017/07/17 08:34:39 zhuk Exp $

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.1

MULTI_PACKAGES =	-main -examples -qch -html -docindex

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m pthread z

FLAVORS =		debug
PSEUDO_FLAVORS =	no_examples no_qch no_html
FLAVOR ?=

.include <bsd.port.mk>
