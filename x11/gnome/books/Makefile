# $OpenBSD: Makefile,v 1.3 2019/11/01 22:08:11 ajacoutot Exp $

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-books
GNOME_VERSION=		3.34.0

# GPLv2+
PERMIT_PACKAGE=		Yes

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

# Gepub-0.6.gir...
BUILD_DEPENDS +=	www/webkitgtk4 \
			x11/gnome/gjs \
			x11/gnome/libgepub \
			x11/gnome/tracker
RUN_DEPENDS +=		www/webkitgtk4 \
			x11/gnome/gjs \
			x11/gnome/libgepub \
			x11/gnome/tracker

LIB_DEPENDS=		evince-*-!light:graphics/evince \
			x11/gnome/desktop

RUN_DEPENDS +=		x11/gnome/epub-thumbnailer

# org.freedesktop.Tracker1.Miner.Extract
RUN_DEPENDS +=		x11/gnome/tracker-miners

.include <bsd.port.mk>
