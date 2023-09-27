COMMENT =	modular Wayland compositor library

V =		20230812
PKGNAME =	wlroots-$V
CATEGORIES =	wayland

SITES =	https://gitlab.freedesktop.org/mherrb/wlroots/-/archive/wlroots-obsd-$V/
DISTFILES =	wlroots-wlroots-obsd-${V}${EXTRACT_SUFX}

HOMEPAGE =	https://gitlab.freedesktop.org/wlroots

# MIT
PERMIT_PACKAGE = Yes

SHARED_LIBS +=  wlroots 0.0 # 0.0

WRKSRC =	${WRKDIR}/wlroots-wlroots-obsd-${V}

MODULES =	devel/meson

WANTLIB +=	EGL GLESv2 drm gbm m pixman-1
WANTLIB +=	display-info liftoff udev
WANTLIB +=	input seat
WANTLIB +=	vulkan wayland-client wayland-server
WANTLIB +=	xcb xcb-composite xcb-dri3 xcb-errors xcb-ewmh
WANTLIB +=	xcb-icccm xcb-present xcb-render xcb-render-util
WANTLIB +=	xcb-res xcb-shm xcb-xfixes xcb-xinput
WANTLIB +=	xkbcommon

BUILD_DEPENDS = \
		devel/ninja \
		graphics/cairo \
		graphics/ffmpeg \
		graphics/glslang \
		graphics/png \
		graphics/vulkan-headers \
		misc/hwdata \
		wayland/wayland-protocols \
		wayland/xwayland

LIB_DEPENDS = \
		graphics/libliftoff \
		graphics/vulkan-loader \
		sysutils/libdisplay-info \
		sysutils/libudev-openbsd \
		sysutils/seatd \
		wayland/libinput-openbsd \
		wayland/wayland \
		x11/xcb-util-errors \
		x11/xkbcommon

RUN_DEPENDS = \
		graphics/cairo \
		graphics/ffmpeg \
		graphics/png \
		wayland/xwayland

DEBUG_PACKAGES = ${BUILD_PACKAGES}

.include <bsd.port.mk>
