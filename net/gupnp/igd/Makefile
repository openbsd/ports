# $OpenBSD: Makefile,v 1.12 2013/05/31 15:19:40 jasper Exp $

COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		0.2.2
REVISION=		0

SHARED_LIBS +=  gupnp-igd-1.0        0.0      # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 gupnp-1.0 m pcre soup-2.4 xml2
WANTLIB += z ffi pthread sqlite3

MODGNOME_TOOLS= 	gi

LIB_DEPENDS=		net/gupnp/core
BUILD_DEPENDS=		devel/py-gobject
RUN_DEPENDS=		devel/py-gobject

.include <bsd.port.mk>
