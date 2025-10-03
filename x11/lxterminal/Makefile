COMMENT =	vte-based terminal emulator of LXDE

GH_ACCOUNT =	lxde
GH_PROJECT =	lxterminal
GH_TAGNAME =	0.4.1

CATEGORIES =	x11

HOMEPAGE =	https://wiki.lxde.org/en/LXTerminal

MAINTAINER =	Shawn Chiou <shawn.chiou@gmail.com>

# GPL v2
PERMIT_PACKAGE=	Yes

WANTLIB +=	X11 atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB +=	gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB +=	pangocairo-1.0 pthread vte-2.91

MODULES =	textproc/intltool

BUILD_DEPENDS = devel/gettext,-tools \
		devel/pcre2
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic
LIB_DEPENDS =	devel/vte3 \
		x11/gtk+3

USE_GMAKE =	Yes
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	--enable-gtk3

NO_TEST =	Yes

.include <bsd.port.mk>
