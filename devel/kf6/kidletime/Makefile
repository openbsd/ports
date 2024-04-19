UNLINKED = kf6
COMMENT =	reporting of idle time of user and system
DISTNAME =	kidletime-${VERSION}

SHARED_LIBS +=  KF6IdleTime               0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} GL ICE Qt6Core Qt6DBus Qt6Gui Qt6WaylandClient
WANTLIB += SM X11 X11-xcb Xext Xss m wayland-client wayland-cursor
WANTLIB += xcb xcb-sync xkbcommon

BUILD_DEPENDS =	wayland/plasma-wayland-protocols \
		wayland/wayland-protocols

LIB_DEPENDS =	wayland/wayland \
		x11/qt6/qtwayland \
		x11/xkbcommon

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
