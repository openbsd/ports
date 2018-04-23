# $OpenBSD: Makefile,v 1.3 2018/04/23 13:37:13 ajacoutot Exp $

COMMENT=		JSON-RPC library for GLib

GNOME_PROJECT=		jsonrpc-glib
GNOME_VERSION=		3.28.0

SHARED_LIBS +=  jsonrpc-glib-1.0          0.0 # 0.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 json-glib-1.0

# -std=gnu11
COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/json-glib

.include <bsd.port.mk>
