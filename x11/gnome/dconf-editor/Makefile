# $OpenBSD: Makefile,v 1.10 2016/05/10 05:26:37 ajacoutot Exp $

COMMENT=		graphical dconf(1) editor

GNOME_PROJECT=		dconf-editor
GNOME_VERSION=		3.20.2

CATEGORIES=		sysutils editors

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dconf gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 intl
WANTLIB += pango-1.0 pangocairo-1.0 pthread

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gtk+3

.include <bsd.port.mk>
