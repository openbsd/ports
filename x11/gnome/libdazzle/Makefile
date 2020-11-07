# $OpenBSD: Makefile,v 1.19 2020/11/07 09:37:33 ajacoutot Exp $

COMMENT=		companion library to GObject and Gtk+

GNOME_PROJECT=		libdazzle
GNOME_VERSION=		3.38.0

SHARED_LIBS += dazzle-1.0                1.2 # 0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl m pango-1.0

# -std=gnu11
COMPILER=		base-clang ports-gcc ports-clang

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

LIB_DEPENDS=		x11/gtk+3

TEST_IS_INTERACTIVE=	x11

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# XXX
# Dazzle-1.0:/hack/objdirs/pobj/libdazzle-3.38.0/build-amd64/tmp-introspect61826tcs/Dazzle-1.0: undefined symbol 'dzl_titlebar_animation_get_type'
# ld.so: Dazzle-1.0: relocation failed
CONFIGURE_ARGS +=	-Dwith_introspection=false

.include <bsd.port.mk>
