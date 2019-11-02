# $OpenBSD: Makefile,v 1.48 2019/11/02 11:40:02 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.34.1

SHARED_LIBS +=  gnome-maps                0.0 # 0.0.0

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += champlain-0.12 folks gee-0.8 geocode-glib gio-2.0 glib-2.0
WANTLIB += gobject-2.0 rest-0.7 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		geo/geocode-glib \
			geo/libchamplain \
			net/telepathy/folks

BUILD_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs
RUN_DEPENDS=		geo/geoclue2 \
			x11/gnome/gjs

.include <bsd.port.mk>
