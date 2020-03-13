# $OpenBSD: Makefile,v 1.10 2020/03/13 16:53:53 rsadowski Exp $

QT5NAME =		QtSVG
COMMENT-main =		SVG support for Qt5

DPB_PROPERTIES =	parallel

SHARED_LIBS =   Qt5Svg                    3.0 # 5.9

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Widgets m z

MULTI_PACKAGES =	-main -examples

FLAVORS =		debug

.include <bsd.port.mk>
