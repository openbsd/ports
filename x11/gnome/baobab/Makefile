# $OpenBSD: Makefile,v 1.46 2018/04/23 13:24:26 ajacoutot Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.28.0

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m pango-1.0

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache

.include <bsd.port.mk>
