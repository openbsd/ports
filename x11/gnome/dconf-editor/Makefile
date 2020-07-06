# $OpenBSD: Makefile,v 1.28 2020/07/06 15:41:43 ajacoutot Exp $

COMMENT=		graphical dconf(1) editor

GNOME_PROJECT=		dconf-editor
GNOME_VERSION=		3.36.4

CATEGORIES=		sysutils editors

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c dconf gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala

LIB_DEPENDS=		x11/gtk+3

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
