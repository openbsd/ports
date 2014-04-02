# $OpenBSD: Makefile,v 1.6 2014/04/02 09:36:13 jasper Exp $

COMMENT=		media art extraction and cache management library

GNOME_PROJECT=		libmediaart
GNOME_VERSION=		0.4.0

SHARED_LIBS +=  mediaart-1.0         0.0      # 396.4

CATEGORIES=		multimedia

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pcre png pthread z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS += gobject-introspection vala
LIB_DEPENDS=		graphics/gdk-pixbuf2

.include <bsd.port.mk>
