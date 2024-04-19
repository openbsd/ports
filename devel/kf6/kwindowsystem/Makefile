UNLINKED = kf6
COMMENT =	access to the windowing system for KDE apps
DISTNAME =	kwindowsystem-${VERSION}

SHARED_LIBS +=  KF6WindowSystem           0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6Qml Qt6WaylandClient SM X11 Xext Xfixes m wayland-client
WANTLIB += wayland-cursor xcb xcb-keysyms xcb-res xkbcommon

BUILD_DEPENDS =		wayland/plasma-wayland-protocols>=1.12.0

LIB_DEPENDS =		wayland/wayland \
			x11/qt6/qtdeclarative \
			x11/qt6/qtwayland \
			x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
