COMMENT =	utilities for graphical user interfaces
DISTNAME =	kguiaddons-${VERSION}

SHARED_LIBS +=  KF6GuiAddons              0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6WaylandClient X11 c m wayland-client wayland-cursor
WANTLIB += xcb xkbcommon

RUN_DEPENDS =		devel/desktop-file-utils

BUILD_DEPENDS =		wayland/plasma-wayland-protocols>=1.15.0

LIB_DEPENDS =		x11/qt6/qtwayland \
			x11/qt6/qtdeclarative \
			wayland/wayland \
			x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
