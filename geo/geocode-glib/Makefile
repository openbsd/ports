# $OpenBSD: Makefile,v 1.4 2014/03/26 14:55:04 jasper Exp $

COMMENT=	convenience library for the geocoding

GNOME_VERSION=	3.12.0
GNOME_PROJECT=	geocode-glib

SHARED_LIBS +=	geocode-glib         0.0      # 0.0

CATEGORIES=	geo

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 json-glib-1.0
WANTLIB += m pcre pthread soup-2.4 sqlite3 xml2 z

LIB_DEPENDS=	devel/json-glib>=1.0.0 \
		devel/libsoup

MODGNOME_TOOLS=		gi
MODGNOME_ICON_CACHE=	Yes

CONFIGURE_STYLE=	gnu

PORTHOME=	${WRKDIST}

.include <bsd.port.mk>
