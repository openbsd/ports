# $OpenBSD: Makefile,v 1.3 2011/07/05 17:14:30 jasper Exp $

COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.6.1
REVISION=		0

SHARED_LIBS +=  gupnp-dlna-1.0       0.0      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 m pcre pthread
WANTLIB += xml2 z

LIB_DEPENDS=		multimedia/gstreamer-0.10/plugins-base \
			net/gupnp/core

CONFIGURE_ARGS+=	--disable-gtk-doc

.include <bsd.port.mk>
