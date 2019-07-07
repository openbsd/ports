# $OpenBSD: Makefile,v 1.105 2019/07/07 11:20:51 ajacoutot Exp $

COMMENT=		document manager application for GNOME

GNOME_PROJECT=		gnome-documents
GNOME_VERSION=		3.32.0

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 cairo cairo-gobject evdocument3 evview3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gtk-3 intl javascriptcoregtk-4.0
WANTLIB += m pango-1.0 pangocairo-1.0 pthread soup-2.4 tracker-sparql-2.0

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
			x11/gnome/gjs \
			x11/gnome/libzapojit
RUN_DEPENDS +=		devel/libgdata \
			x11/gnome/gjs \
			x11/gnome/libzapojit

LIB_DEPENDS=		evince-*-!light:graphics/evince \
			www/webkitgtk4 \
			x11/gnome/desktop \
			x11/gnome/tracker

# org.gnome.OnlineMiners.Miner
RUN_DEPENDS +=		x11/gnome/online-miners

# org.freedesktop.Tracker1.Miner.Extract
RUN_DEPENDS +=		x11/gnome/tracker-miners

.include <bsd.port.mk>
