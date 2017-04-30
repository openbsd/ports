# $OpenBSD: Makefile,v 1.1.1.1 2017/04/30 19:01:28 robert Exp $

COMMENT=	MATE calculator

MATE_PROJECT=	mate-calc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl m pthread
WANTLIB += atk-1.0 cairo-gobject cairo gdk-3 gdk_pixbuf-2.0 gtk-3
WANTLIB += pango-1.0 pangocairo-1.0 xml2

MODULES=	devel/dconf \
		x11/gnome

LIB_DEPENDS=	x11/gtk+3

BUILD_DEPENDS=	devel/gsettings-desktop-schemas
RUN_DEPENDS=	devel/gsettings-desktop-schemas

MODGNOME_TOOLS=	desktop-file-utils

.include <bsd.port.mk>
