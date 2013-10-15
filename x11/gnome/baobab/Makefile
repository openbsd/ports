# $OpenBSD: Makefile,v 1.23 2013/10/15 08:25:35 ajacoutot Exp $

COMMENT=		directory tree analyzer for GNOME

GNOME_PROJECT=		baobab
GNOME_VERSION=		3.10.1

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

MODGNOME_TOOLS= 	gi vala yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

.include <bsd.port.mk>
