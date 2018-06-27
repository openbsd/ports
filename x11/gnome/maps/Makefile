# $OpenBSD: Makefile,v 1.40 2018/06/27 21:04:10 espie Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.28.2
REVISION=		0

SHARED_LIBS +=  gnome-maps                0.0 # 0.0

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL X11 X11-xcb Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo cairo-gobject
WANTLIB += champlain-0.12 clutter-1.0 cogl cogl-pango cogl-path
WANTLIB += drm epoxy expat ffi folks fontconfig freetype fribidi
WANTLIB += gbm gdk-3 gdk_pixbuf-2.0 gee-0.8 geocode-glib gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz iconv intl json-glib-1.0 lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += rest-0.7 soup-2.4 soup-gnome-2.4 sqlite3 xcb xcb-dri2
WANTLIB += xcb-render xcb-shm xcb-xfixes xml2 z

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

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
