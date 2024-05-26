COMMENT =		suite of solitaire card games

DIST_TUPLE =		gnome GNOME aisleriot 3.22.33 .

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo canberra canberra-gtk3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 guile-3.0 intl rsvg-2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_LDFLAGS =	-L${X11BASE}/lib
MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache yelp

CFLAGS +=		-Wno-strict-prototypes

# need to match lang/guile3
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			lang/guile3

BUILD_DEPENDS =		shells/bash

CONFIGURE_ARGS =	-Dtheme_kde=false

# XXX horrible hack: make it possible to build when multiple guile versions are
# installed (take precedence over -I${LOCALBASE}/include because meson reorders
# FLAGS so we can't use MODGNOME_CPPFLAGS)
post-configure:
	sed -i "s,cc,cc -I${LOCALBASE}/include/guile/3.0," ${WRKDIR}/bin/cc

.include <bsd.port.mk>
