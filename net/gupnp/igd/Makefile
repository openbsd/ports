# $OpenBSD: Makefile,v 1.3 2011/07/05 17:14:30 jasper Exp $

COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		0.1.11
REVISION=		0

SHARED_LIBS +=  gupnp-igd-1.0        0.0      # 3.4

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 gupnp-1.0 m pcre soup-2.4 xml2
WANTLIB += z

LIB_DEPENDS=		net/gupnp/core
BUILD_DEPENDS=		devel/gobject-introspection \
			devel/py-gobject
RUN_DEPENDS=		devel/py-gobject

CONFIGURE_ARGS+=	--disable-gtk-doc

.include <bsd.port.mk>
