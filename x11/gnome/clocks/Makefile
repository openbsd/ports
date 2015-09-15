# $OpenBSD: Makefile,v 1.29 2015/09/15 06:06:47 ajacoutot Exp $

COMMENT=		clock application for GNOME

GNOME_PROJECT=		gnome-clocks
GNOME_VERSION=		3.16.2

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject canberra dbus-1 epoxy expat ffi
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 geocode-glib
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += graphite2 gsound gthread-2.0 gtk-3 gweather-3 harfbuzz
WANTLIB += json-glib-1.0 ltdl lzma m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 vorbis vorbisfile xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

LIB_DEPENDS=		audio/gsound \
			devel/libtool,-ltdl \
			geo/geocode-glib \
			x11/gnome/desktop \
			x11/gnome/libgweather

# geocoding.c
BUILD_DEPENDS +=	geo/geoclue2
RUN_DEPENDS +=		geo/geoclue2

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala yelp

pre-configure:
	sed -i 's,.-Wno-unused-but-set-variable,,' \
		${WRKSRC}/Makefile.in

.include <bsd.port.mk>
