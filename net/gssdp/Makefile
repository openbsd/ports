# $OpenBSD: Makefile,v 1.48 2020/06/23 07:34:11 jasper Exp $

COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		1.2.3

SHARED_LIBS +=  gssdp-1.2            2.2      # 3.0
CATEGORIES=		net devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 soup-2.4

MODULES=		devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS +=	gobject-introspection vala

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+3

.include <bsd.port.mk>
