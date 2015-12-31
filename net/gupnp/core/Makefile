# $OpenBSD: Makefile,v 1.38 2015/12/31 11:24:35 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.20.15

SHARED_LIBS +=  gupnp-1.0            3.2     # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 lzma
WANTLIB += gssdp-1.0 m pcre soup-2.4 xml2 z ffi pthread sqlite3

MODGNOME_TOOLS += gobject-introspection vala

LIB_DEPENDS=		net/gssdp>=0.14.13

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS=		--with-context-manager=unix

.include <bsd.port.mk>
