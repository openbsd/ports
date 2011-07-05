# $OpenBSD: Makefile,v 1.3 2011/07/05 17:14:30 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.8.0
REVISION=		0

SHARED_LIBS +=  gupnp-av-1.0         0.0      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += e2fs-uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gthread-2.0 gupnp-1.0 m pcre soup-2.4 xml2
WANTLIB += z

LIB_DEPENDS=		net/gupnp/core
BUILD_DEPENDS=		devel/gobject-introspection

CONFIGURE_ARGS+=	--enable-introspection \
			--disable-gtk-doc

.include <bsd.port.mk>
