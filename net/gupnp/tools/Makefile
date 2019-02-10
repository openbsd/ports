# $OpenBSD: Makefile,v 1.30 2019/02/10 12:56:05 jasper Exp $

COMMENT=		collection of developer-oriented UPnP tools

GNOME_PROJECT=		gupnp-tools
GNOME_VERSION=		0.8.15
REVISION=		0

MODULES=		devel/meson \
			x11/gnome

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gssdp-1.2 gtk-3 gtksourceview-4
WANTLIB += gupnp-1.2 gupnp-av-1.0 intl pango-1.0 pangocairo-1.0
WANTLIB += soup-2.4 xml2

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache


LIB_DEPENDS=		net/gupnp/av \
			net/gupnp/core>=1.1.2 \
			x11/gtksourceview4

# Makefile.inc overrides
CONFIGURE_ENV=
CONFIGURE_STYLE=	meson

.include <bsd.port.mk>
