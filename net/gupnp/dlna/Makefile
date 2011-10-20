# $OpenBSD: Makefile,v 1.11 2011/10/20 09:35:07 jasper Exp $

COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.6.4

SHARED_LIBS +=  gupnp-dlna-1.0       0.0      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += c glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 m pcre pthread
WANTLIB += xml2 z ffi

MODGNOME_TOOLS= 	goi

LIB_DEPENDS=		multimedia/gstreamer-0.10/plugins-base
RUN_DEPENDS=		net/gupnp/core

# sndio(7) support
RUN_DEPENDS+=		multimedia/gstreamer-0.10/plugins-good

# Needs media files which aren't distributed with the tarball.
NO_REGRESS=		Yes

.include <bsd.port.mk>
