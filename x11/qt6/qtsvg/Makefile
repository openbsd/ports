QT6NAME =	QtSVG
COMMENT =	SVG support for Qt6
PKGSPEC =	qt6-qtsvg-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Svg              0.1 # 6.3
SHARED_LIBS +=  Qt6SvgWidgets       0.1 # 6.3

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m
WANTLIB += xkbcommon z

LIB_DEPENDS =	x11/xkbcommon
BUILD_DEPENDS =	graphics/vulkan-loader

.include <bsd.port.mk>
