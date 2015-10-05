# $OpenBSD: Makefile,v 1.6 2015/10/05 05:59:16 ajacoutot Exp $

COMMENT=		graphical dconf(1) editor

GNOME_PROJECT=		dconf-editor
GNOME_VERSION=		3.18.0

CATEGORIES=		sysutils

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dconf gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gtk-3 pango-1.0
WANTLIB += pangocairo-1.0 pthread xml2

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gtk+3

.include <bsd.port.mk>
