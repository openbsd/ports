# $OpenBSD: Makefile,v 1.14 2020/03/21 16:14:54 robert Exp $

COMMENT=		MATE calculator

MATE_PROJECT=		mate-calc

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl m pthread
WANTLIB += atk-1.0 cairo-gobject cairo gdk-3 gdk_pixbuf-2.0 gtk-3
WANTLIB += pango-1.0 pangocairo-1.0 xml2 harfbuzz

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
