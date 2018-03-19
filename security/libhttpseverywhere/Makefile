# $OpenBSD: Makefile,v 1.22 2018/03/19 08:56:24 ajacoutot Exp $

COMMENT=		library to use HTTPSEverywhere in desktop applications

GNOME_VERSION=		0.8.2
GNOME_PROJECT=		libhttpseverywhere

SHARED_LIBS += httpseverywhere-0.8       0.0 # 0.8.0

CATEGORIES=		security net

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive gee-0.8 gio-2.0 glib-2.0 gobject-2.0 json-glib-1.0
WANTLIB += soup-2.4

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		archivers/libarchive \
			devel/json-glib \
			devel/libgee \
			devel/libsoup

.include <bsd.port.mk>
