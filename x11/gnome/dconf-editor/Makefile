# $OpenBSD: Makefile,v 1.3 2015/04/03 08:50:46 ajacoutot Exp $

COMMENT=		graphical dconf(1) editor

GNOME_PROJECT=		dconf-editor
GNOME_VERSION=		3.16.0

CATEGORIES=		sysutils

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dconf fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

LIB_DEPENDS=		x11/gtk+3

.include <bsd.port.mk>
