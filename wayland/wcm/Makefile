COMMENT =	wayfire graphical configuration manager

V =		0.9.0
DISTNAME =	wcm-${V}

CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =Yes

SITES =		https://github.com/WayfireWM/wcm/releases/download/v${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =	devel/meson

BUILD_DEPENDS =	wayland/wayland-protocols\
		wayland/wayfire>=0.9.0 \
		wayland/wf-shell \

LIB_DEPENDS =	wayland/wayland \
		wayland/wf-config \
		wayland/libevdev-openbsd \
		x11/xkbcommon \
		x11/gtk3mm

RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} atkmm-1.6 c cairo epoxy evdev gdk-3
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gobject-2.0
WANTLIB += gtk-3 gtkmm-3.0 m pango-1.0 pangocairo-1.0 sigc-2.0
WANTLIB += wayland-client wf-config xkbregistry xml2

.include <bsd.port.mk>
