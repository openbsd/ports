# $OpenBSD: Makefile,v 1.25 2016/10/12 17:54:03 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.9
REVISION=		0

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += ffi glib-2.0 gobject-2.0 lzma m pcre pthread xml2 z

BUILD_DEPENDS =		net/gssdp
RUN_DEPENDS =		net/gssdp
LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

MODGNOME_TOOLS += gobject-introspection vala

.include <bsd.port.mk>
