# $OpenBSD: Makefile,v 1.32 2019/07/07 11:20:51 ajacoutot Exp $

COMMENT=		font viewer for GNOME

GNOME_PROJECT=		gnome-font-viewer
GNOME_VERSION=		3.32.0
REVISION=		0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo cairo-gobject fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl m pango-1.0 pangocairo-1.0 atk-1.0 z

LIB_DEPENDS=		x11/gnome/desktop

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
