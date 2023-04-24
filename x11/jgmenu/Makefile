COMMENT =	freedesktop-compliant menu for openbox and tint2
CATEGORIES =	x11

GH_ACCOUNT =	jgmenu
GH_PROJECT =	jgmenu
GH_TAGNAME =	v4.4.1
REVISION =	0

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xrandr c cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 png pthread rsvg-2 xml2 z

# base-gcc does not understand all the warnings
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	x11/gnome/librsvg

RUN_DEPENDS =	devel/desktop-file-utils \
                x11/gtk+4,-guic

CONFIGURE_STYLE =	simple

USE_GMAKE =	Yes
MAKE_FLAGS =	VERBOSE=1

.include <bsd.port.mk>
