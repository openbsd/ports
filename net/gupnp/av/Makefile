# $OpenBSD: Makefile,v 1.32 2021/10/26 14:43:30 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.14.0

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/meson \
			x11/gnome

WANTLIB += glib-2.0 gobject-2.0 xml2

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

MODGNOME_TOOLS += gobject-introspection vala

.include <bsd.port.mk>
