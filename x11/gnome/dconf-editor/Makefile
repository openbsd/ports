# $OpenBSD: Makefile,v 1.24 2019/11/01 19:35:07 ajacoutot Exp $

COMMENT=		graphical dconf(1) editor

GNOME_PROJECT=		dconf-editor
GNOME_VERSION=		3.34.2

CATEGORIES=		sysutils editors

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dconf gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += pango-1.0 pangocairo-1.0 pthread

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache vala

LIB_DEPENDS=		x11/gtk+3

.include <bsd.port.mk>
