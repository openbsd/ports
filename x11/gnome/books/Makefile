# $OpenBSD: Makefile,v 1.1.1.1 2019/05/08 21:28:55 ajacoutot Exp $

COMMENT=		document and e-books manager for GNOME

GNOME_PROJECT=		gnome-books
GNOME_VERSION=		3.32.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

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

# Gepub-0.6.gir...
BUILD_DEPENDS +=	x11/gnome/gjs \
			x11/gnome/libgepub
RUN_DEPENDS +=		x11/gnome/gjs \
			x11/gnome/libgepub

LIB_DEPENDS=		evince-*-!light:graphics/evince \
			www/webkitgtk4 \
			x11/gnome/desktop \
			x11/gnome/tracker

RUN_DEPENDS +=		x11/gnome/epub-thumbnailer

# org.freedesktop.Tracker1.Miner.Extract
RUN_DEPENDS +=		x11/gnome/tracker-miners

.include <bsd.port.mk>
