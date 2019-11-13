# $OpenBSD: Makefile,v 1.32 2019/11/13 19:21:49 jasper Exp $

COMMENT=		DLNA integration for GUPnP

GNOME_PROJECT=		gupnp-dlna
GNOME_VERSION=		0.10.5
REVISION=		1

SHARED_LIBS +=	gupnp-dlna-2.0            0.0 # 3.0
SHARED_LIBS +=	gupnp-dlna-gst-2.0        0.0 # 3.0

MODULES=		x11/gnome

MODGNOME_TOOLS += gobject-introspection vala

WANTLIB =  c ffi glib-2.0 gmodule-2.0 gobject-2.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 iconv intl lzma m orc-0.4 pcre pthread xml2 z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		multimedia/gstreamer1/plugins-base
RUN_DEPENDS=		net/gupnp/core

# support for various media files
RUN_DEPENDS+=		multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav

# Needs media files which aren't distributed with the tarball.
NO_TEST=		Yes

.include <bsd.port.mk>
