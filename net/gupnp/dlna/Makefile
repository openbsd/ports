# $OpenBSD: Makefile,v 1.5 2011/07/07 11:09:15 jasper Exp $

COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.6.2

SHARED_LIBS +=  gupnp-dlna-1.0       0.0      # 2.0

MODULES=		devel/gettext \
			x11/gnome

EXTRACT_SUFX=		.tar.xz

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 m pcre pthread
WANTLIB += xml2 z

BUILD_DEPENDS=		devel/gobject-introspection
LIB_DEPENDS=		multimedia/gstreamer-0.10/plugins-base \
			net/gupnp/core

CONFIGURE_ARGS+=	--disable-gtk-doc \
			--enable-introspection

.include <bsd.port.mk>
