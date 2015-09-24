# $OpenBSD: Makefile,v 1.21 2015/09/24 10:39:32 ajacoutot Exp $

COMMENT=		map application for GNOME

GNOME_PROJECT=		gnome-maps
GNOME_VERSION=		3.16.2
REVISION=		0

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

# patch-*
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi

.include <bsd.port.mk>
