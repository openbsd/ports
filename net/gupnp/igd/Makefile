# $OpenBSD: Makefile,v 1.22 2017/11/21 00:13:02 naddy Exp $

COMMENT=		library to handle UPnP IGD port mapping

GNOME_PROJECT=		gupnp-igd
GNOME_VERSION=		0.2.5
REVISION=		0

SHARED_LIBS +=  gupnp-igd-1.0        0.0      # 4.0

MODULES=		lang/python \
			x11/gnome

WANTLIB =  ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.0
WANTLIB += gthread-2.0 gupnp-1.0 iconv intl lzma m pcre pthread soup-2.4
WANTLIB += sqlite3 xml2 z

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		net/gupnp/core
BUILD_DEPENDS=		devel/py-gobject
RUN_DEPENDS=		devel/py-gobject

.include <bsd.port.mk>
