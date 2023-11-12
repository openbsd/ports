COMMENT =	integration kwayland plugins
DISTNAME =	kwayland-integration-${VERSION}

UNLINKED =	kde-plasma

WANTLIB += ${COMPILER_LIBCXX} GL KF5WaylandClient KF5WindowSystem
WANTLIB += Qt5Core Qt5Gui Qt5WaylandClient Qt5Widgets X11 m wayland-client
WANTLIB += xkbcommon

BUILD_DEPENDS =	devel/kf5/kidletime

LIB_DEPENDS =	wayland/wayland \
		devel/kf5/kwayland \
		devel/kf5/kwindowsystem \
		x11/qt5/qtwayland

BUILD_DEPENDS =	wayland/wayland-protocols \
		wayland/plasma-wayland-protocols

TEST_DEPENDS =	devel/kf5/kidletime

CONFIGURE_ENV +=	KFWaylandServer_DIR=${MODQT5_LIBDIR}/cmake

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
