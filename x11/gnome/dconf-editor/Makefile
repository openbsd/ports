# $OpenBSD: Makefile,v 1.21 2019/01/01 11:36:30 ajacoutot Exp $

COMMENT=		graphical dconf(1) editor

GNOME_PROJECT=		dconf-editor
GNOME_VERSION=		3.30.2

CATEGORIES=		sysutils editors

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dconf gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala

LIB_DEPENDS=		x11/gtk+3

.include <bsd.port.mk>
