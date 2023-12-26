COMMENT =	screen management library for KDE Plasma Workspaces
DISTNAME =	libkscreen-${VERSION}
PKGNAME =	libkscreen-kf5-${VERSION}

SHARED_LIBS +=  KF5Screen         0.0 # 5.22.0 5
SHARED_LIBS +=  KF5ScreenDpms     0.0 # 5.22.0 5

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5WaylandClient Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5WaylandClient Qt5X11Extras c m wayland-client
WANTLIB += xcb xcb-dpms xcb-randr

LIB_DEPENDS += 	devel/kf5/kwayland \
		devel/kf5/kconfig \
		x11/qt5/qtwayland \
		x11/qt5/qtx11extras

BUILD_DEPENDS =	wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

DEBUG_PACKAGES =	${BUILD_PACKAGES}

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
