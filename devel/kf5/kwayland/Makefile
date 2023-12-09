COMMENT =	Qt API to interact with the wayland-client and -server
DISTNAME =	kwayland-${VERSION}

SHARED_LIBS +=  KF5WaylandClient   0.3
SHARED_LIBS +=  KF5WaylandServer   0.1

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5WaylandClient c m wayland-client wayland-server
WANTLIB += xkbcommon

BUILD_DEPENDS =		wayland/libinput-openbsd \
			wayland/plasma-wayland-protocols \
			wayland/wayland-protocols

LIB_DEPENDS =		wayland/wayland \
			x11/qt5/qtwayland \

# libinput
CXXFLAGS=		-I${LOCALBASE}/include

.include <bsd.port.mk>
