COMMENT =	Qt API to interact with the wayland-client and -server
DISTNAME =	kwayland-${VERSION}

SHARED_LIBS +=  KF5WaylandClient   0.3
SHARED_LIBS +=  KF5WaylandServer   0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5WaylandClient c m wayland-client wayland-server
WANTLIB += xkbcommon

BUILD_DEPENDS =		wayland/wayland-protocols \
			wayland/plasma-wayland-protocols>=1.9.0

LIB_DEPENDS =		wayland/wayland \
			x11/qt5/qtwayland

CONFIGURE_ARGS +=	-DBUILD_TESTING=OFF

.include <bsd.port.mk>
