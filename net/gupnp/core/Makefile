# $OpenBSD: Makefile,v 1.43 2016/10/15 13:02:58 jasper Exp $

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		1.0.1

SHARED_LIBS +=  gupnp-1.0            3.2     # 4.0

MODULES=		lang/python \
			x11/gnome

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 lzma intl iconv
WANTLIB += gssdp-1.0 m pcre soup-2.4 xml2 z ffi pthread sqlite3

MODGNOME_TOOLS += gobject-introspection vala

LIB_DEPENDS=		net/gssdp>=0.14.15

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS=		--with-context-manager=unix

.include <bsd.port.mk>
