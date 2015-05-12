# $OpenBSD: Makefile,v 1.20 2015/05/12 22:35:18 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.16.2

SHARED_LIBS +=  gnome-maps                0.0 # 0.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += cairo-gobject champlain-0.12 clutter-1.0 cogl cogl-pango
WANTLIB += cogl-path drm epoxy expat ffi folks fontconfig freetype
WANTLIB += gbm gdk-3 gdk_pixbuf-2.0 gee-0.8 geocode-glib gio-2.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz json-glib-1.0 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 xcb xcb-dri2 xcb-render xcb-shape
WANTLIB += xcb-shm xcb-xfixes xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		geo/geocode-glib \
			geo/libchamplain \
			net/telepathy/folks

# loads JS from an included GResource
BUILD_DEPENDS +=	geo/geoclue2 \
			x11/gnome/gjs
RUN_DEPENDS +=		geo/geoclue2 \
			x11/gnome/gjs

.include <bsd.port.mk>
