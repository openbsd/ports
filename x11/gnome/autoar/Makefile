# $OpenBSD: Makefile,v 1.17 2022/01/07 12:42:21 ajacoutot Exp $

COMMENT=		GLib wrapper around libarchive

GNOME_PROJECT=		gnome-autoar
GNOME_VERSION=		0.4.2

SHARED_LIBS += gnome-autoar-0            0.0 # 0.1.2
SHARED_LIBS += gnome-autoar-gtk-0        0.0 # 0.1.2

CATEGORIES=		archivers

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += archive gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
