# $OpenBSD: Makefile,v 1.1.1.1 2015/04/04 08:12:40 ajacoutot Exp $

COMMENT=		thumbnailer for EPub and MOBI books

GNOME_PROJECT=		gnome-epub-thumbnailer
GNOME_VERSION=		1.5

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += pthread xml2

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			graphics/gdk-pixbuf2

.include <bsd.port.mk>
