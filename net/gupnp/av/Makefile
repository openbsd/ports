# $OpenBSD: Makefile,v 1.13 2013/10/21 17:32:15 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.3

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gupnp-1.0 m pcre soup-2.4 xml2
WANTLIB += z pthread sqlite3

LIB_DEPENDS=		net/gupnp/core>=0.20.0

MODGNOME_TOOLS= 	gi vala

.include <bsd.port.mk>
