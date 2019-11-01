# $OpenBSD: Makefile,v 1.106 2019/11/01 22:03:27 ajacoutot Exp $

COMMENT=		document manager application for GNOME

GNOME_PROJECT=		gnome-documents
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

# GData-0.0.gir, Zpj-0.0.gir...
BUILD_DEPENDS +=	devel/libgdata \
			www/webkitgtk4 \
			x11/gnome/gjs \
			x11/gnome/libzapojit \
			x11/gnome/tracker
RUN_DEPENDS +=		devel/libgdata \
			www/webkitgtk4 \
			x11/gnome/gjs \
			x11/gnome/libzapojit \
			x11/gnome/tracker

LIB_DEPENDS=		evince-*-!light:graphics/evince \
			x11/gnome/desktop

# org.gnome.OnlineMiners.Miner
RUN_DEPENDS +=		x11/gnome/online-miners

# org.freedesktop.Tracker1.Miner.Extract
RUN_DEPENDS +=		x11/gnome/tracker-miners

.include <bsd.port.mk>
