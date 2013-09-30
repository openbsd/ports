# $OpenBSD: Makefile,v 1.2 2013/09/30 10:40:27 sthen Exp $

COMMENT=	convenience library for the geocoding

GNOME_VERSION=	3.10.0
REVISION=	0
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

LIB_DEPENDS=	devel/json-glib \
		devel/libsoup

MODGNOME_TOOLS=	gi

CONFIGURE_STYLE=gnu

PORTHOME=	${WRKDIST}

.include <bsd.port.mk>
