COMMENT =	i3-compatible Wayland compositor

GH_ACCOUNT =	swaywm
GH_PROJECT =	sway
GH_TAGNAME =	1.10
REVISION =	0

CATEGORIES =	wayland

HOMEPAGE =	https://swaywm.org/

# MIT
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

WANTLIB =	cairo drm evdev gdk_pixbuf-2.0 glib-2.0 gobject-2.0 input
WANTLIB +=	json-c pango-1.0 pangocairo-1.0 pcre2-8 pixman-1 pthread
WANTLIB +=	udev wayland-client wayland-cursor
WANTLIB +=	wayland-server wlroots-0.18
WANTLIB +=	xcb-icccm xcb xkbcommon
WANTLIB +=	c m

BUILD_DEPENDS = graphics/gdk-pixbuf2 \
		textproc/scdoc \
		wayland/wayland-protocols

LIB_DEPENDS =	devel/json-c \
		devel/pango \
		devel/pcre2 \
		wayland/libevdev-openbsd \
		wayland/libinput-openbsd>=1.26 \
		wayland/wayland \
		wayland/wlroots \
		x11/xkbcommon

RUN_DEPENDS =	wayland/wmenu>=0.1.9 \
		wayland/swaybg \
		x11/gnome/themes-extra

CONFIGURE_ARGS = -Dtray=disabled

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sway
	mv ${WRKINST}${SYSCONFDIR}/sway ${PREFIX}/share/examples/
	${INSTALL_SCRIPT} ${FILESDIR}/startsway.sh ${PREFIX}/bin

.include <bsd.port.mk>
