# $OpenBSD: Makefile,v 1.5 2017/07/29 00:07:15 zhuk Exp $

QT5NAME =		QtSVG
REVISION =		0
COMMENT-main =		SVG support for Qt5

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.1

MULTI_PACKAGES =	-main -examples

WANTLIB =  ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m pthread z

FLAVORS =		debug

.include <bsd.port.mk>
