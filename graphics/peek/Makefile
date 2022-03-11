COMMENT =	simple screen recorder

GH_PROJECT = 	peek
GH_ACCOUNT = 	phw
GH_TAGNAME = 	1.5.1
REVISION =	0

CATEGORIES = 	graphics x11

# GPL v3
PERMIT_PACKAGE = Yes

MODULES =	devel/meson \
		devel/dconf \
		lang/python

RUN_DEPENDS =	graphics/ffmpeg \
		x11/gtk+3,-guic \
		devel/desktop-file-utils

BUILD_DEPENDS =	devel/gettext,-tools \
		lang/vala

LIB_DEPENDS =	x11/keybinder3

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += keybinder-3.0 pango-1.0

.include <bsd.port.mk>
