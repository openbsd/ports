# $OpenBSD: Makefile,v 1.2 2014/03/09 22:19:28 ajacoutot Exp $

COMMENT=		media art extraction and cache management library

GNOME_PROJECT=		libmediaart
GNOME_VERSION=		0.2.0
REVISION=		0

SHARED_LIBS +=	mediaart-1.0              0.0 # 200.0

CATEGORIES=		multimedia

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pcre png pthread stdc++ z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		gi vala

LIB_DEPENDS=		graphics/gdk-pixbuf2

.include <bsd.port.mk>
