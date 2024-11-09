COMMENT =	window-stacking Wayland compositor

GH_ACCOUNT =	labwc
GH_PROJECT =	labwc
GH_TAGNAME =	0.8.1
REVISION =	1

CATEGORIES =	wayland

HOMEPAGE =	https://labwc.github.io/

# GPLv2
PERMIT_PACKAGE = Yes

MODULES =	devel/meson

DEBUG_PACKAGES = ${BUILD_PACKAGES}

BUILD_DEPENDS =	devel/gettext,-tools \
		wayland/wayland-protocols

RUN_DEPENDS +=	x11/gtk+4,-guic \
		wayland/havoc \
		wayland/swaybg \
		wayland/swayidle \
		wayland/swaylock

LIB_DEPENDS =	sysutils/libsfdo \
		x11/gnome/librsvg \
		wayland/wayland \
		wayland/wlroots>=0.18 \
		x11/xkbcommon

WANTLIB += c cairo glib-2.0 gobject-2.0 input intl m pango-1.0
WANTLIB += pangocairo-1.0 pixman-1 png rsvg-2 sfdo-basedir sfdo-desktop
WANTLIB += sfdo-icon wayland-server wlroots-0.18 xcb xkbcommon
WANTLIB += xml2

.include <bsd.port.mk>
