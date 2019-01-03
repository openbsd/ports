# $OpenBSD: Makefile,v 1.72 2019/01/03 14:27:00 ajacoutot Exp $

BROKEN-powerpc=		undefined reference to __sync_add_and_fetch_8

TRACKER_API=		2.0

COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		3.28.1
REVISION=		1

CATEGORIES=		graphics

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 babl-0.1 c cairo
WANTLIB += cairo-gobject crypto curl dazzle-1.0 epoxy exiv2 expat
WANTLIB += ffi fontconfig freetype fribidi gck-1 gcr-base-3 gcrypt
WANTLIB += gdata gdk-3 gdk_pixbuf-2.0 gegl-0.3 geocode-glib gexiv2
WANTLIB += gfbgraph-0.2 gio-2.0 glib-2.0 gmodule-2.0 goa-1.0 gobject-2.0
WANTLIB += gpg-error graphite2 grilo-0.3 gthread-2.0 gtk-3 harfbuzz
WANTLIB += iconv icudata icui18n icuuc idn2 intl jpeg json-glib-1.0
WANTLIB += kvm lzma m nghttp2 nspr4 nss3 nssutil3 oauth p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png16 psl rest-0.7 smime3 soup-2.4 soup-gnome-2.4
WANTLIB += sqlite3 ssl ssl3 unistring uuid xcb xcb-render
WANTLIB += xcb-shm xml2 z ${COMPILER_LIBCXX}
WANTLIB += tracker-control-${TRACKER_API}
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS=		devel/libgdata \
			geo/geocode-glib \
			graphics/gegl03 \
			graphics/libgexiv2 \
			x11/gnome/gfbgraph \
			x11/gnome/grilo \
			x11/gnome/libdazzle \
			x11/gnome/online-accounts \
			x11/gnome/tracker

# com.intel.dleyna-renderer
RUN_DEPENDS +=		net/dleyna/renderer

# src/photos-application.c
RUN_DEPENDS +=		x11/gnome/online-miners

# calls grl_registry_load...plugin
RUN_DEPENDS +=		x11/gnome/grilo-plugins

# org.freedesktop.Tracker schema
RUN_DEPENDS +=		x11/gnome/tracker-miners

.if ${MACHINE_ARCH} == i386
# undefined reference to `__sync_add_and_fetch_8'
CFLAGS +=		-march=i686
.endif

CONFIGURE_STYLE=	gnu

# XXX
# cc1: error: unrecognized command line option "-Wunused-but-set-variable"
# cc1: error: unrecognized command line option "-Warray-bounds"
pre-configure:
	sed -i -e 's,-Wunused-but-set-variable,,g' \
		-e 's,-Warray-bounds,,g' ${WRKSRC}/configure

.include <bsd.port.mk>
