COMMENT =	i3-compatible Wayland compositor

GH_ACCOUNT =	swaywm
GH_PROJECT =	sway
GH_TAGNAME =	1.9

CATEGORIES =	wayland

HOMEPAGE =	https://swaywm.org/

# MIT
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

WANTLIB =	evdev cairo glib-2.0 gobject-2.0 input json-c
WANTLIB +=	pango-1.0 pangocairo-1.0 pcre2-8 pixman-1 pthread
WANTLIB +=	udev wayland-client wayland-cursor
WANTLIB +=	wayland-server wlroots
WANTLIB +=	xcb-icccm xcb xkbcommon
WANTLIB +=	c m

BUILD_DEPENDS = graphics/gdk-pixbuf2 \
		textproc/scdoc \
		wayland/wayland-protocols

LIB_DEPENDS =	devel/json-c \
		devel/pango \
		devel/pcre2 \
		wayland/libevdev-openbsd \
		wayland/libinput-openbsd \
		wayland/wayland \
		wayland/wlroots \
		x11/xkbcommon

RUN_DEPENDS =	wayland/wmenu \
		wayland/swaybg \
		x11/gnome/themes-extra

CONFIGURE_ARGS = -Dtray=disabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sway
	mv ${WRKINST}${SYSCONFDIR}/sway ${PREFIX}/share/examples/sway/
	${INSTALL_SCRIPT} ${FILESDIR}/startsway.sh ${PREFIX}/bin

.include <bsd.port.mk>
