# $OpenBSD: Makefile,v 1.44 2017/05/26 18:58:52 ajacoutot Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.24.0

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0 pthread

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
