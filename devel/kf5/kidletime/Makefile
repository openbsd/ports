COMMENT =	reporting of idle time of user and system
DISTNAME =	kidletime-${VERSION}

SHARED_LIBS =		KF5IdleTime		6.0

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5DBus Qt5Gui Qt5WaylandClient
WANTLIB += Qt5X11Extras SM X11 X11-xcb Xext Xss m wayland-client
WANTLIB += xcb xcb-sync

LIB_DEPENDS =	x11/qt5/qtx11extras \
		x11/qt5/qtwayland

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
