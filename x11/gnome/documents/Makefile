# $OpenBSD: Makefile,v 1.100 2018/12/14 19:00:20 landry Exp $

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-documents
GNOME_VERSION=		3.28.2

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += cairo cairo-gobject evdocument3 evview3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection docbook
MODGNOME_TOOLS += 	gtk-update-icon-cache yelp

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

# sync with x11/gnome/gjs
COMPILER=		base-clang ports-gcc

# GData-0.0.gir, Gepub-0.6.gir Zpj-0.0.gir...
BUILD_DEPENDS +=	devel/libgdata \
			x11/gnome/gjs \
			x11/gnome/libgepub \
			x11/gnome/libzapojit \
			x11/gnome/tracker

RUN_DEPENDS +=		devel/libgdata \
			x11/gnome/gjs \
			x11/gnome/libgepub \
			x11/gnome/libzapojit \
			x11/gnome/tracker \
			www/webkitgtk4

LIB_DEPENDS=		evince-*-!light:graphics/evince \
			x11/gnome/desktop

# gnome-books
RUN_DEPENDS +=		x11/gnome/epub-thumbnailer

# src/application.js
RUN_DEPENDS +=		x11/gnome/online-miners

# org.freedesktop.Tracker schema
RUN_DEPENDS +=		x11/gnome/tracker-miners

.include <bsd.port.mk>
