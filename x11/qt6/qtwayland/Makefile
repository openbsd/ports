QT6NAME =	QtWayland
COMMENT =	Qt6 module for Wayland support
PKGSPEC =	qt6-qtwayland-${QT6_PKGSPEC}

SHARED_LIBS +=  Qt6WaylandClient                     7.0 # 6.7
SHARED_LIBS +=  Qt6WaylandCompositor                 3.0 # 6.7
SHARED_LIBS +=  Qt6WaylandEglClientHwIntegration     2.0 # 6.7
SHARED_LIBS +=  Qt6WaylandEglCompositorHwIntegration 2.0 # 6.7
SHARED_LIBS +=  Qt6WlShellIntegration                3.0 # 6.7
SHARED_LIBS +=  Qt6WaylandCompositorIviapplication   0.0 # 0.0
SHARED_LIBS +=  Qt6WaylandCompositorPresentationTime 0.0 # 0.0
SHARED_LIBS +=  Qt6WaylandCompositorWLShell          0.0 # 0.0
SHARED_LIBS +=  Qt6WaylandCompositorXdgShell         0.0 # 0.0

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6QmlMeta Qt6QmlModels Qt6QmlWorkerScript
WANTLIB += Qt6Quick Qt6Svg c drm m wayland-client wayland-cursor
WANTLIB += wayland-egl wayland-server xkbcommon

LIB_DEPENDS =	wayland/wayland \
		x11/qt6/qtdeclarative \
		x11/xkbcommon

BUILD_DEPENDS =	wayland/wayland-protocols \
		x11/qt6/qtshadertools

.include <bsd.port.mk>
