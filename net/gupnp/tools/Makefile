# $OpenBSD: Makefile,v 1.35 2021/11/19 08:22:13 ajacoutot Exp $

COMMENT=		collection of developer-oriented UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.10.2

MODULES=		devel/meson \
			x11/gnome

WANTLIB += c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gssdp-1.2 gtk-3 gtksourceview-4 gupnp-1.2 gupnp-av-1.0
WANTLIB += intl soup-2.4 xml2

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/gupnp/av \
			net/gupnp/core>=1.1.2 \
			x11/gtksourceview4

.include <bsd.port.mk>
