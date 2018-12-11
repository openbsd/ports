# $OpenBSD: Makefile,v 1.29 2018/12/11 19:44:32 ajacoutot Exp $

COMMENT=		free replacements of Intel UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.8.15

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

WANTLIB += c gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gtk-3 gtksourceview-4 gupnp-1.0 gupnp-av-1.0
WANTLIB += intl soup-2.4 xml2

LIB_DEPENDS=		net/gupnp/av \
			net/gupnp/core \
			x11/gtksourceview4

# Makefile.inc overrides
CONFIGURE_ENV=
CONFIGURE_STYLE=	meson

.include <bsd.port.mk>
