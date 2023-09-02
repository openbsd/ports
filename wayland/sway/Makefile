COMMENT =	i3-compatible Wayland compositor

V =		20230812
PKGNAME =	sway-${V}
REVISION =	1

GH_ACCOUNT =	mherrb
GH_PROJECT =	sway
GH_TAGNAME =	sway-obsd-${V}

CATEGORIES =	wayland

HOMEPAGE =	https://github.com/swaywm/sway

# MIT
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

WANTLIB =	evdev cairo glib-2.0 gobject-2.0 input json-c
WANTLIB +=	pango-1.0 pangocairo-1.0 pcre2-8 pixman-1 pthread
WANTLIB +=	udev wayland-client wayland-cursor
WANTLIB +=	wayland-server wlroots
WANTLIB +=	xcb-icccm xcb xkbcommon
WANTLIB +=	c m

BUILD_DEPENDS = \
		graphics/gdk-pixbuf2 \
		textproc/scdoc

LIB_DEPENDS =	devel/json-c \
		devel/pango \
		devel/pcre2 \
		sysutils/libevdev-openbsd \
		wayland/libinput-openbsd \
		wayland/wayland \
		wayland/wlroots \
		x11/xkbcommon

RUN_DEPENDS =	x11/gnome/themes-extra \
		wayland/foot

CONFIGURE_ARGS = -Dtray=disabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sway
	mv ${WRKINST}${SYSCONFDIR}/sway ${PREFIX}/share/examples/sway/

.include <bsd.port.mk>
