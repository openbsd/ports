# $OpenBSD: Makefile,v 1.32 2014/04/02 09:36:11 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		framework for creating UPnP devices and control points

GNOME_PROJECT=		gupnp
GNOME_VERSION=		0.20.10
REVISION=		0

SHARED_LIBS +=  gupnp-1.0            3.1      # 4.0

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += uuid gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 m pcre soup-2.4 xml2 z ffi pthread sqlite3

MODGNOME_TOOLS += gobject-introspection vala

LIB_DEPENDS=		net/gssdp \
			sysutils/e2fsprogs

MODPY_ADJ_FILES=	tools/gupnp-binding-tool

CONFIGURE_ARGS=		--with-context-manager=unix

.include <bsd.port.mk>
