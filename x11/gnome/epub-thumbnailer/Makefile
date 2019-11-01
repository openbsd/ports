# $OpenBSD: Makefile,v 1.6 2019/11/01 09:21:26 ajacoutot Exp $

COMMENT=		thumbnailer for EPub and MOBI books

GNOME_PROJECT=		gnome-epub-thumbnailer
GNOME_VERSION=		1.6

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += archive c gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += xml2 intl

MODULES=		x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			graphics/gdk-pixbuf2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
