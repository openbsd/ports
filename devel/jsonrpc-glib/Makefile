# $OpenBSD: Makefile,v 1.9 2019/11/01 10:25:46 ajacoutot Exp $

COMMENT=		JSON-RPC library for GLib

GNOME_PROJECT=		jsonrpc-glib
GNOME_VERSION=		3.34.0

SHARED_LIBS += jsonrpc-glib-1.0          0.1 # 1.3303.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 json-glib-1.0

# -std=gnu11
COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		devel/json-glib

.include <bsd.port.mk>
