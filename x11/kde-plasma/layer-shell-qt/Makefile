COMMENT =	Qt Wayland wl-layer-shell protocol component
DISTNAME =	layer-shell-qt-${VERSION}

MODKDE5_TRANSLATIONS =	Yes

SHARED_LIBS +=  LayerShellQtInterface    0.0 # 5.22.5

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5WaylandClient
WANTLIB += m wayland-client xkbcommon

LIB_DEPENDS +=	x11/qt5/qtwayland \
		x11/xkbcommon

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
