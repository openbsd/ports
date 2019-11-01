# $OpenBSD: Makefile,v 1.8 2019/11/01 19:37:28 ajacoutot Exp $

COMMENT=		templating library for GLib

GNOME_PROJECT=		template-glib
GNOME_VERSION=		3.34.0

SHARED_LIBS += template_glib-1.0         1.0 # 0.3200.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gobject-2.0 intl
WANTLIB += m

# -std=gnu11
COMPILER=		base-clang ports-gcc ports-clang
COMPILER_LANGS=		c

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		devel/bison

LIB_DEPENDS=		devel/gobject-introspection

.include <bsd.port.mk>
