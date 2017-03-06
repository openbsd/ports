# $OpenBSD: Makefile,v 1.12 2017/03/06 08:10:10 ajacoutot Exp $

COMMENT=		media art extraction and cache management library

GNOME_PROJECT=		libmediaart
GNOME_VERSION=		1.9.1

SHARED_LIBS +=  mediaart-2.0         1.0      # 901.0

CATEGORIES=		multimedia

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pcre png pthread z

MODULES=		x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		graphics/gdk-pixbuf2

CONFIGURE_ARGS=		--disable-qt

.include <bsd.port.mk>
