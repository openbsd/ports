# $OpenBSD: Makefile,v 1.24 2019/07/12 20:46:28 sthen Exp $

COMMENT=	convenience library for the geocoding

GNOME_VERSION=	3.26.1
GNOME_PROJECT=	geocode-glib

SHARED_LIBS +=	geocode-glib         0.1      # 0.0

CATEGORIES=	geo

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 m soup-2.4

MODULES=	devel/meson \
		x11/gnome

LIB_DEPENDS=	devel/json-glib>=1.0.0 \
		devel/libsoup

MODGNOME_TOOLS += gobject-introspection gtk-update-icon-cache

CONFIGURE_ARGS +=-Denable-gtk-doc=false \
		 -Denable-installed-tests=false

PORTHOME=	${WRKDIST}

.include <bsd.port.mk>
