# $OpenBSD: Makefile,v 1.55 2020/07/05 07:13:52 ajacoutot Exp $

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		1.2.3
REVISION=		0

SHARED_LIBS +=  gupnp-1.2	0.0

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.2
WANTLIB += soup-2.4 xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS += gobject-introspection vala

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# man page generation
BUILD_DEPENDS +=	textproc/libxslt

LIB_DEPENDS=		net/gssdp>=1.2.3

# Makefile.inc overrides
CONFIGURE_ENV =
CONFIGURE_STYLE =	meson
CONFIGURE_ARGS=		-Dcontext-manager=unix

.include <bsd.port.mk>
