QT6NAME =	QtSVG
COMMENT =	SVG support for Qt6
PKGSPEC =	qt6-qtsvg-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6Svg              2.0 # 6.7
SHARED_LIBS +=  Qt6SvgWidgets       1.1 # 6.7

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c m
WANTLIB += xkbcommon z

MODQT6_DEPS =	No
LIB_DEPENDS =	x11/xkbcommon \
		${MODQT6_LIB_DEPENDS}

.include <bsd.port.mk>
