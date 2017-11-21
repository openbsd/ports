# $OpenBSD: Makefile,v 1.27 2017/11/21 00:13:02 naddy Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.10
REVISION=		0

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		x11/gnome

WANTLIB =  ffi glib-2.0 gobject-2.0 iconv intl lzma m pcre pthread xml2
WANTLIB += z

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

MODGNOME_TOOLS += gobject-introspection vala

.include <bsd.port.mk>
