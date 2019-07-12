# $OpenBSD: Makefile,v 1.45 2019/07/12 20:48:27 sthen Exp $

COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		1.2.1

SHARED_LIBS +=  gssdp-1.2            2.1      # 3.0
CATEGORIES=		net devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl pango-1.0 pangocairo-1.0
WANTLIB += soup-2.4

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+3

.include <bsd.port.mk>
