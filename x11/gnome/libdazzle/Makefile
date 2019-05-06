# $OpenBSD: Makefile,v 1.13 2019/05/06 22:09:10 ajacoutot Exp $

COMMENT=		companion library to GObject and Gtk+

GNOME_PROJECT=		libdazzle
GNOME_VERSION=		3.32.2

SHARED_LIBS +=  dazzle-1.0                1.2 # 0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m pango-1.0 pangocairo-1.0 pthread

# -std=gnu11
COMPILER=		base-clang ports-gcc ports-clang

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

LIB_DEPENDS=		x11/gtk+3

.include <bsd.port.mk>
