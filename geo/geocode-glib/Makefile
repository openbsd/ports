# $OpenBSD: Makefile,v 1.20 2017/11/21 00:13:01 naddy Exp $

COMMENT=	convenience library for the geocoding

GNOME_VERSION=	3.24.0
GNOME_PROJECT=	geocode-glib
REVISION=	0

SHARED_LIBS +=	geocode-glib         0.1      # 0.0

CATEGORIES=	geo

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv intl
WANTLIB += json-glib-1.0 lzma m pcre pthread soup-2.4 sqlite3 xml2 z

MODULES=	x11/gnome


LIB_DEPENDS=	devel/json-glib>=1.0.0 \
		devel/libsoup

MODGNOME_TOOLS += gobject-introspection gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

PORTHOME=	${WRKDIST}

.include <bsd.port.mk>
