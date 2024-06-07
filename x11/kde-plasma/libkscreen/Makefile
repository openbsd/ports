COMMENT =	screen management library for KDE Plasma Workspaces
DISTNAME =	libkscreen-${VERSION}
PKGNAME =	kf6-libkscreen-${VERSION}
REVISION =	1

SHARED_LIBS +=  KF6Screen                 0.0 # 0.0
SHARED_LIBS +=  KF6ScreenDpms             0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6WaylandClient
WANTLIB += c m wayland-client wayland-cursor xcb xcb-dpms xcb-randr
WANTLIB += xkbcommon

BUILD_DEPENDS =	wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

LIB_DEPENDS =	x11/qt6/qtwayland \
		wayland/wayland \
		x11/xkbcommon

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
