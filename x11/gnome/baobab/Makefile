# $OpenBSD: Makefile,v 1.27 2014/04/01 18:06:30 jasper Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.12.0

# GPLv2 - GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

LIB_DEPENDS=		x11/gtk+3

RUN_DEPENDS=		x11/gnome/gvfs

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS += gobject-introspection vala yelp desktop-file-utils
MODGNOME_TOOLS += gtk-update-icon-cache
pre-configure:
# XXX cc1: error: unrecognized command line option "-Wno-unused-but-set-variable"
	perl -pi -e 's,-Wno-unused-but-set-variable,,' ${WRKSRC}/src/Makefile.in

.include <bsd.port.mk>
