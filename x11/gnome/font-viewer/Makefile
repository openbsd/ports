# $OpenBSD: Makefile,v 1.35 2021/10/26 10:42:46 jasper Exp $

COMMENT=		font viewer for GNOME

GNOME_PROJECT=		gnome-font-viewer
GNOME_VERSION=		41.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo fontconfig freetype handy-1 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3 harfbuzz
WANTLIB += intl m pango-1.0 pangocairo-1.0

LIB_DEPENDS=		x11/gnome/desktop \
			x11/libhandy

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
