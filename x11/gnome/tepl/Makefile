# $OpenBSD: Makefile,v 1.9 2020/11/21 08:07:30 ajacoutot Exp $

COMMENT=		Text Editor Product Line

GNOME_PROJECT=		tepl
GNOME_VERSION=		5.0.1

CATEGORIES=		devel

SHARED_LIBS += tepl-5                    0.0 # 0.0.0

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += amtk-5 cairo gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += gtksourceview-4 icui18n icuuc intl

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		textproc/icu4c \
			x11/gnome/amtk \
			x11/gtksourceview4

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
