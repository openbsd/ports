# $OpenBSD: Makefile,v 1.31 2020/10/30 19:18:12 jasper Exp $

COMMENT=		helpers for building A/V applications using GUPnP

GNOME_PROJECT=		gupnp-av
GNOME_VERSION=		0.12.11
REVISION=		2

SHARED_LIBS +=  gupnp-av-1.0         0.1      # 2.0

MODULES=		x11/gnome

WANTLIB =  ffi glib-2.0 gobject-2.0 iconv intl lzma m pcre pthread xml2
WANTLIB += z

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/glib2 \
			textproc/libxml

MODGNOME_TOOLS += gobject-introspection vala

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
