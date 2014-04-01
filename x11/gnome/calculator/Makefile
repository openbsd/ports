# $OpenBSD: Makefile,v 1.11 2014/04/01 17:03:14 jasper Exp $

COMMENT=		GNOME desktop calculator

GNOME_PROJECT=		gnome-calculator
GNOME_VERSION=		3.12.0

CATEGORIES=		math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += xml2 z gtksourceview-3.0

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS+=		x11/gtksourceview3

# needed to download IMF/ECB rates (Financial mode)
RUN_DEPENDS=		x11/gnome/gvfs

MODGNOME_TOOLS= 	vala yelp
MODGNOME_TOOLS +=	desktop-file-utils

.include <bsd.port.mk>
