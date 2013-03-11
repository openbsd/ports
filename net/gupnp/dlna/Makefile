# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:47 espie Exp $

COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.6.6
REVISION =		1

SHARED_LIBS +=  gupnp-dlna-1.0       0.0      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += c ffi glib-2.0 gmodule-2.0 gobject-2.0 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 m pcre pthread xml2 z

MODGNOME_TOOLS= 	goi

LIB_DEPENDS=		multimedia/gstreamer-0.10/plugins-base
RUN_DEPENDS=		net/gupnp/core

# sndio(7) support (and pulls gstreamer-0.10/plugins-base)
RUN_DEPENDS+=		multimedia/gstreamer-0.10/plugins-good

# support for various media files
RUN_DEPENDS+=		multimedia/gstreamer-0.10/plugins-ugly

# Needs media files which aren't distributed with the tarball.
NO_TEST=		Yes

.include <bsd.port.mk>
