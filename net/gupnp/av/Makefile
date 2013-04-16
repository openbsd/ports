# $OpenBSD: Makefile,v 1.10 2013/04/16 13:17:01 ajacoutot Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.1

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += e2fs-uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 gupnp-1.0 m pcre soup-2.4 xml2
WANTLIB += z pthread

LIB_DEPENDS=		net/gupnp/core>=0.20.0

MODGNOME_TOOLS= 	gi vala

.include <bsd.port.mk>
