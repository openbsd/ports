# $OpenBSD: Makefile,v 1.67 2022/01/13 19:52:05 ajacoutot Exp $

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		1.4.3

SHARED_LIBS += gupnp-1.2                 1.0 # 1.104.3

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.2
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS	=	gobject-introspection vala docbook

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# man page generation
BUILD_DEPENDS +=	textproc/libxslt

LIB_DEPENDS=		net/gssdp>=1.4.0.1

.include <bsd.port.mk>
