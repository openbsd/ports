# $OpenBSD: Makefile,v 1.6 2017/10/24 10:12:20 rsadowski Exp $

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

DPB_PROPERTIES =	parallel

SHARED_LIBS =		Qt5Svg			2.2

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m z

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

.include <bsd.port.mk>
