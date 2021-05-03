# $OpenBSD: Makefile,v 1.1.1.1 2021/05/03 16:38:26 rsadowski Exp $

QT6NAME =		QtSVG
COMMENT =		SVG support for Qt6

SHARED_LIBS +=  Qt6Svg              0.0 # 6.0
SHARED_LIBS +=  Qt6SvgWidgets       0.0 # 6.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m
WANTLIB += z

BUILD_DEPENDS =		graphics/vulkan-loader

.include <bsd.port.mk>
