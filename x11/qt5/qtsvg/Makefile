# $OpenBSD: Makefile,v 1.8 2019/06/24 20:56:46 sthen Exp $

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5
REVISION-main =		1

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.2

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m z

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

.include <bsd.port.mk>
