COMMENT =	Qt Wayland wl-layer-shell protocol component
DISTNAME =	layer-shell-qt-${VERSION}

SHARED_LIBS +=  LayerShellQtInterface    1.0 # 5.22.5

MODKDE5_TRANSLATIONS =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Qml
WANTLIB += Qt6WaylandClient m wayland-client wayland-cursor xkbcommon

BUILD_DEPENDS =	wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	x11/qt6/qtwayland \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
