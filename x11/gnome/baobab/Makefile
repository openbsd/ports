# $OpenBSD: Makefile,v 1.49 2018/06/29 22:16:22 espie Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.28.0
REVISION=		1

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += m pango-1.0

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache vala

.include <bsd.port.mk>
