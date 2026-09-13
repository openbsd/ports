COMMENT =		reference Wayland compositor

V =		16.0.0
DISTNAME =	weston-${V}
EXTRACT_SUFX =	.tar.xz

SITES =		https://gitlab.freedesktop.org/wayland/weston/-/releases/${V}/downloads/

SHARED_LIBS +=  weston-16                 0.0 # 0.0
SHARED_LIBS +=  exec_weston               0.0 # 0.0

CATEGORIES =		wayland

HOMEPAGE =		https://wayland.freedesktop.org/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += EGL GLESv2 X11 X11-xcb Xcursor c cairo display-info
WANTLIB += drm epoll-shim evdev fontconfig gbm glib-2.0 gobject-2.0
WANTLIB += input m pango-1.0 pangocairo-1.0 pixman-1 png udev
WANTLIB += util wayland-client wayland-cursor wayland-egl wayland-server
WANTLIB += webp xcb xcb-composite xcb-render xcb-shm xcb-xfixes
WANTLIB += xcb-xkb xkbcommon

MODULES =		devel/meson

BUILD_DEPENDS =		wayland/wayland-protocols

LIB_DEPENDS =		wayland/wayland \
			wayland/libinput-openbsd \
			graphics/cairo \
			devel/pango \
			graphics/libwebp \
			devel/epoll-shim \
			sysutils/libdisplay-info \
			wayland/libevdev-openbsd

RUN_DEPENDS =		wayland/xwayland

CONFIGURE_ARGS =	${MESON_ARGS} \
			-Dbackend-drm=false \
			-Dbackend-headless=true \
			-Dbackend-pipewire=false \
			-Dbackend-rdp=false \
			-Dbackend-vnc=false \
			-Dbackend-wayland=true \
			-Dbackend-x11=true \
			-Dbackend-default=wayland \
			-Drenderer-vulkan=false \
			-Dsystemd=false \
			-Ddeprecated-remoting=false \
			-Ddeprecated-pipewire=false \
			-Dxwayland=true \
			-Dshell-lua=false \
			-Dcolor-management-lcms=false \
			-Dimage-jpeg=false \
			-Dimage-webp=true \
			-Ddemo-clients=true \
			-Dsimple-clients=damage,im,egl,shm,touch,dmabuf-feedback,dmabuf-egl \
			-Dtests=false

V_MAJOR =	${V:R:R}
SUBST_VARS =	V_MAJOR

DEBUG_PACKAGES =        ${BUILD_PACKAGES}

.include <bsd.port.mk>
