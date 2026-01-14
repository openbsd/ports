COMMENT =	configure displays in Wayland compositors

GH_TAGNAME =	1.1.3
GH_ACCOUNT =	artizirk
GH_PROJECT =	wdisplays

CATEGORIES =	wayland

MAINTAINER =	Landry Breuil <landry@openbsd.org>
# MIT
PERMIT_PACKAGE =Yes

MODULES =	devel/meson

BUILD_DEPENDS =	wayland/wayland-protocols

LIB_DEPENDS =	x11/gtk+3

RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils

WANTLIB += c cairo epoxy gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 wayland-client

.include <bsd.port.mk>
