QT5NAME =	QtWayland
COMMENT =	Qt5 module for Wayland support

SHARED_LIBS +=  Qt5WaylandClient          0.0 # 5.15
SHARED_LIBS +=  Qt5WaylandCompositor      0.0 # 5.15

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick X11 Xcomposite Xext c
WANTLIB += drm fontconfig freetype glib-2.0 gthread-2.0 intl m
WANTLIB += wayland-client wayland-cursor wayland-egl wayland-server
WANTLIB += xkbcommon z

FLAVORS =	debug

LIB_DEPENDS =	wayland/wayland \
		x11/qt5/qtdeclarative \
		x11/xkbcommon

BUILD_DEPENDS =	wayland/wayland-protocols \
		graphics/vulkan-headers

MODQMAKE_ARGS += QMAKE_WAYLAND_SCANNER=${PREFIX}/bin/wayland-scanner
MODQMAKE_RECURSIVE =	No

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.tests/wayland_scanner/wayland_scanner.pro \
		${WRKSRC}/features/wayland-scanner-client-wayland-protocol-include.prf

.include <bsd.port.mk>
