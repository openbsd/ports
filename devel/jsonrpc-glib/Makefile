# $OpenBSD: Makefile,v 1.1.1.1 2017/11/03 11:32:38 ajacoutot Exp $

COMMENT=		JSON-RPC library for GLib

GNOME_PROJECT=		jsonrpc-glib
GNOME_VERSION=		3.26.1

SHARED_LIBS +=  jsonrpc_glib-1.0          0.0 # 0.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 json-glib-1.0

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/json-glib

.include <bsd.port.mk>
