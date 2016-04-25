# $OpenBSD: Makefile,v 1.25 2016/04/25 18:49:11 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.20.1

SHARED_LIBS +=  gnome-maps                0.0 # 0.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += champlain-0.12 clutter-1.0 cogl cogl-pango cogl-path
WANTLIB += drm epoxy expat ffi folks fontconfig freetype gbm gdk-3
WANTLIB += gdk_pixbuf-2.0 gee-0.8 geocode-glib gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += iconv intl json-glib-1.0 lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3 xcb xcb-dri2
WANTLIB += xcb-render xcb-shape xcb-shm xcb-xfixes xml2 z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache

LIB_DEPENDS=		geo/geocode-glib \
			geo/libchamplain \
			net/telepathy/folks

BUILD_DEPENDS +=	geo/geoclue2 \
			x11/gnome/gjs
RUN_DEPENDS +=		geo/geoclue2 \
			x11/gnome/gjs

.include <bsd.port.mk>
