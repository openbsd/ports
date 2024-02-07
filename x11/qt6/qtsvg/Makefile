QT6NAME =	QtSVG
COMMENT =	SVG support for Qt6
PKGSPEC =	qt6-qtsvg-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Svg              1.2 # 6.6
SHARED_LIBS +=  Qt6SvgWidgets       1.0 # 6.6

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m
WANTLIB += xkbcommon z

BUILD_DEPENDS =	graphics/vulkan-loader

LIB_DEPENDS =	x11/xkbcommon

.include <bsd.port.mk>
