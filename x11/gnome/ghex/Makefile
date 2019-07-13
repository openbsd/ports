# $OpenBSD: Makefile,v 1.75 2019/07/13 11:38:18 ajacoutot Exp $

COMMENT=		binary editor

GNOME_PROJECT=		ghex
GNOME_VERSION=		3.18.4

SHARED_LIBS += gtkhex-3                  0.0 # 0.0.0

CATEGORIES=		sysutils editors

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo gailutil-3 gdk-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl pango-1.0 pangocairo-1.0

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache yelp

.include <bsd.port.mk>
