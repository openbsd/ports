# $OpenBSD: Makefile,v 1.46 2019/05/22 21:23:50 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.32.2.1

SHARED_LIBS +=  gnome-maps                0.0 # 0.0.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 Xcomposite Xdamage Xext Xfixes Xi Xrandr atk-1.0
WANTLIB += cairo cairo-gobject champlain-0.12 clutter-1.0 cogl
WANTLIB += cogl-pango cogl-path drm folks gbm gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 geocode-glib gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl json-glib-1.0 pango-1.0 pangocairo-1.0 pthread
WANTLIB += rest-0.7 soup-2.4 xml2

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
