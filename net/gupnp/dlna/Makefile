# $OpenBSD: Makefile,v 1.23 2014/04/01 15:31:46 jasper Exp $

COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.10.2
REVISION=		0

SHARED_LIBS +=	gupnp-dlna-2.0            0.0 # 3.0
SHARED_LIBS +=	gupnp-dlna-gst-2.0        0.0 # 3.0

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection vala

WANTLIB += c ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 m pcre pthread xml2 z

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base
RUN_DEPENDS=		net/gupnp/core

# support for various media files
RUN_DEPENDS+=		multimedia/gstreamer1/plugins-ugly

# Needs media files which aren't distributed with the tarball.
NO_TEST=		Yes

.include <bsd.port.mk>
