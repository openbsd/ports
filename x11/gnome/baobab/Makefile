# $OpenBSD: Makefile,v 1.38 2015/10/09 11:59:56 ajacoutot Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.18.1

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0
WANTLIB += pthread

LIB_DEPENDS=		x11/gtk+3

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache

pre-configure:
# XXX cc1: error: unrecognized command line option "-Wno-unused-but-set-variable"
	sed -i 's,-Wno-unused-but-set-variable,,' ${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
