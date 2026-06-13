COMMENT ?=	modular Wayland compositor library (${MODWLROOTS_VERSION})

DISTNAME =	wlroots-${V}
PKGSTEM ?=	wlroots-${MODWLROOTS_VERSION}
CATEGORIES =	wayland
EPOCH =		0

SITES =		${HOMEPAGE}/wlroots/-/releases/${V}/downloads/

HOMEPAGE =	https://gitlab.freedesktop.org/wlroots

# MIT
PERMIT_PACKAGE = Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS=	c
MODULES =	devel/meson wayland/wlroots

MODWLROOTS_LIBDEP =	No

WANTLIB +=	EGL GLESv2 drm gbm m pixman-1
WANTLIB +=	display-info lcms2 liftoff udev
WANTLIB +=	input seat
WANTLIB +=	vulkan wayland-client wayland-server
WANTLIB +=	xcb xcb-composite xcb-dri3 xcb-errors xcb-ewmh
WANTLIB +=	xcb-icccm xcb-present xcb-render xcb-render-util
WANTLIB +=	xcb-res xcb-shm xcb-xfixes xcb-xinput
WANTLIB +=	xkbcommon

BUILD_DEPENDS = \
		graphics/glslang \
		graphics/vulkan-headers \
		misc/hwdata \
		wayland/wayland-protocols \
		wayland/xwayland

LIB_DEPENDS = \
		graphics/lcms2 \
		graphics/libliftoff \
		graphics/vulkan-loader \
		sysutils/libdisplay-info \
		sysutils/libudev-openbsd \
		sysutils/seatd \
		wayland/libinput-openbsd \
		wayland/wayland \
		x11/xcb-util-errors \
		x11/xkbcommon

RUN_DEPENDS =	wayland/xwayland

CONFIGURE_ARGS = \
		-Dexamples=false \
		-Dallocators=gbm

DEBUG_PACKAGES = ${BUILD_PACKAGES}
