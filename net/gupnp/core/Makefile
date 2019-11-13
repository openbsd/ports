# $OpenBSD: Makefile,v 1.50 2019/11/13 19:21:49 jasper Exp $

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		1.2.1
REVISION=		0

SHARED_LIBS +=  gupnp-1.2	0.0

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.2
WANTLIB += intl pthread soup-2.4 xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS += gobject-introspection vala

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		net/gssdp>=1.1.3

# Makefile.inc overrides
CONFIGURE_ENV =
CONFIGURE_STYLE =	meson
CONFIGURE_ARGS=		-Dcontext-manager=unix

.include <bsd.port.mk>
