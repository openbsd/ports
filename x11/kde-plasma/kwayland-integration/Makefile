COMMENT =	integration kwayland plugins
DISTNAME =	kwayland-integration-${VERSION}


MODULES +=	devel/kf5

BUILD_DEPENDS =	devel/kf5/kidletime

LIB_DEPENDS =	wayland/wayland \
		devel/kf5/kwindowsystem \
		x11/qt6/qtwayland

TEST_DEPENDS =	devel/kf5/kidletime

CONFIGURE_ENV +=	KFWaylandServer_DIR=${MODQT5_LIBDIR}/cmake

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
