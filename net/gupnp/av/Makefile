# $OpenBSD: Makefile,v 1.16 2014/04/01 15:31:46 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.5

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gupnp-1.0 m pcre pthread soup-2.4 sqlite3 uuid xml2
WANTLIB += z

LIB_DEPENDS=		net/gupnp/core>=0.20.0

MODGNOME_TOOLS= 	gobject-introspection vala

.include <bsd.port.mk>
