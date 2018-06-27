# $OpenBSD: Makefile,v 1.28 2018/06/27 21:04:09 espie Exp $

COMMENT=		font viewer for GNOME

GNOME_PROJECT=		gnome-font-viewer
GNOME_VERSION=		3.28.0
REVISION=		0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo cairo-gobject fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0

LIB_DEPENDS=		x11/gnome/desktop

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils

.include <bsd.port.mk>
