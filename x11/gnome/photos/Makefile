# $OpenBSD: Makefile,v 1.78 2019/11/01 21:44:18 ajacoutot Exp $

BROKEN-powerpc=		undefined reference to __sync_add_and_fetch_8

COMMENT=		access, organize and share your photos on GNOME

GNOME_PROJECT=		gnome-photos
GNOME_VERSION=		3.34.0

CATEGORIES=		graphics

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 babl-0.1 c cairo cairo-gobject dazzle-1.0 gdata
WANTLIB += gdk-3 gdk_pixbuf-2.0 gegl-0.4 geocode-glib gexiv2 gfbgraph-0.2
WANTLIB += gio-2.0 glib-2.0 goa-1.0 gobject-2.0 grilo-0.3 gtk-3
WANTLIB += intl jpeg m pango-1.0 pangocairo-1.0 png tracker-control-2.0
WANTLIB += tracker-sparql-2.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

LIB_DEPENDS=		devel/libgdata \
			geo/geocode-glib \
			graphics/gegl04 \
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

.include <bsd.port.mk>
