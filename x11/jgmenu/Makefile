COMMENT =	freedesktop-compliant menu for openbox and tint2
CATEGORIES =	x11

GH_ACCOUNT =	jgmenu
GH_PROJECT =	jgmenu
GH_TAGNAME =	v4.6.0

# GPLv2 only
PERMIT_PACKAGE = Yes

WANTLIB += X11 Xrandr c cairo glib-2.0 gobject-2.0 harfbuzz intl
WANTLIB += pango-1.0 pangocairo-1.0 png pthread xml2

# base-gcc does not understand all the warnings
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

LIB_DEPENDS =	devel/pango
RUN_DEPENDS =	devel/desktop-file-utils \
                x11/gtk+4,-guic

CONFIGURE_STYLE = simple
USE_GMAKE =	Yes
MAKE_FLAGS =	VERBOSE=1
TEST_FLAGS =	CC="${CC}"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mrust}
LIB_DEPENDS +=	x11/gnome/librsvg
WANTLIB +=	gdk_pixbuf-2.0 gio-2.0 rsvg-2
.else
CONFIGURE_ARGS += --disable-svg
.endif

.include <bsd.port.mk>
