# $OpenBSD: Makefile,v 1.30 2019/11/14 16:23:23 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.11
REVISION=		1

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		x11/gnome

WANTLIB =  ffi glib-2.0 gobject-2.0 iconv intl lzma m pcre pthread xml2
WANTLIB += z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

MODGNOME_TOOLS += gobject-introspection vala

.include <bsd.port.mk>
