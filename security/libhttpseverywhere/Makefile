# $OpenBSD: Makefile,v 1.9 2017/06/25 12:05:53 ajacoutot Exp $

COMMENT=		library to use HTTPSEverywhere in desktop applications

GNOME_VERSION=		0.4.6
GNOME_PROJECT=		libhttpseverywhere
REVISION=		0

SHARED_LIBS=		httpseverywhere-0.4 0.4

CATEGORIES=		security net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive gee-0.8 gio-2.0 glib-2.0 gobject-2.0 json-glib-1.0
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libgee \
			devel/libsoup

### XXX the meson MODULE should handle these
pre-configure:
	${SUBST_CMD} ${WRKSRC}/meson.build
post-install:
	rm ${PREFIX}/lib/libhttpseverywhere-0.4.so
###

.include <bsd.port.mk>
