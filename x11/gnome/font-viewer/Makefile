# $OpenBSD: Makefile,v 1.33 2019/11/02 10:09:34 jasper Exp $

COMMENT=		font viewer for GNOME

GNOME_PROJECT=		gnome-font-viewer
GNOME_VERSION=		3.34.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gnome-desktop-3 gobject-2.0 gtk-3 harfbuzz
WANTLIB += intl m pango-1.0 pangocairo-1.0

LIB_DEPENDS=		x11/gnome/desktop

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

.include <bsd.port.mk>
