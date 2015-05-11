# $OpenBSD: Makefile,v 1.22 2015/05/11 07:21:21 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.7
REVISION=		1

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gupnp-1.0 lzma m pcre pthread soup-2.4 sqlite3 xml2 z

LIB_DEPENDS=		net/gupnp/core>=0.20.0

MODGNOME_TOOLS += gobject-introspection vala

.include <bsd.port.mk>
