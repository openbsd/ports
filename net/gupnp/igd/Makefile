# $OpenBSD: Makefile,v 1.19 2015/04/21 18:51:25 sthen Exp $

COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		0.2.4
REVISION=		0

SHARED_LIBS +=  gupnp-igd-1.0        0.0      # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gthread-2.0 gupnp-1.0 lzma m pcre pthread soup-2.4 sqlite3
WANTLIB += uuid xml2 z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		net/gupnp/core
BUILD_DEPENDS=		devel/py-gobject
RUN_DEPENDS=		devel/py-gobject

.include <bsd.port.mk>
