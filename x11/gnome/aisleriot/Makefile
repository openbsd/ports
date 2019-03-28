# $OpenBSD: Makefile,v 1.35 2019/03/28 16:46:59 ajacoutot Exp $

COMMENT =		suite of solitaire card games

GNOME_PROJECT =		aisleriot
GNOME_VERSION =		3.22.8

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 croco-0.6 dbus-1
WANTLIB += dbus-glib-1 epoxy expat ffi fontconfig freetype fribidi
WANTLIB += gc gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 graphite2 gthread-2.0 gtk-3 guile-2.2
WANTLIB += harfbuzz iconv intl ltdl lzma m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png16 pthread rsvg-2 unistring
WANTLIB += vorbis vorbisfile xcb xcb-render xcb-shm xml2 z

MODULES =		devel/dconf \
			devel/gconf2 \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache yelp

MODGCONF2_SCHEMAS_DIR =	aisleriot

CFLAGS +=		-Wno-strict-prototypes

# need to matche lang/guile2
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			lang/guile2

BUILD_DEPENDS =		shells/bash

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-card-theme-formats=svg

CONFIGURE_ENV =		CONFIG_SHELL="${LOCALBASE}/bin/bash"

# make it possible to build when both guile and guile2 are installed
# (takes precedence over -I${LOCALBASE}/include)
MODGNOME_CPPFLAGS +=	-I${LOCALBASE}/include/guile/2.2
CONFIGURE_ENV +=	ac_cv_path_GUILE=${LOCALBASE}/bin/guile2.2
CONFIGURE_ENV +=	ac_cv_path_GUILD=${LOCALBASE}/bin/guild2.2
CONFIGURE_ENV +=	ac_cv_path_GUILE_CONFIG=${LOCALBASE}/bin/guile-config2.2
CONFIGURE_ENV +=	ac_cv_path_GUILE_TOOLS=${LOCALBASE}/bin/guile-tools2.2

.include <bsd.port.mk>
