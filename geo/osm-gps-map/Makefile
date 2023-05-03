COMMENT=		Gtk+ Widget for Displaying OpenStreetMap tiles

GH_ACCOUNT = 		nzjrs
GH_PROJECT = 		osm-gps-map
GH_COMMIT =		2396aa6cb2da877847049e7f4243a7d196f9862e
DISTNAME =		osm-gps-map-1.2.1pre0

CATEGORIES=		geo x11

SHARED_LIBS +=  osmgpsmap-1.0             1.0 # 0.0

HOMEPAGE=		https://nzjrs.github.io/osm-gps-map/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-3 harfbuzz iconv intl m nghttp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png
WANTLIB += pthread soup-3.0 sqlite3 xcb xcb-render xcb-shm z
WANTLIB += Xau Xdmcp brotlicommon brotlidec ${COMPILER_LIBCXX} execinfo
WANTLIB += fribidi idn2 jpeg psl unistring

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/libsoup3 \
			x11/gtk+3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		osm_gps_mapdocdir=${PREFIX}/share/doc/osm-gps-map/

AUTOMAKE_VERSION=	1.14
AUTOCONF_VERSION=	2.69
BUILD_DEPENDS +=	textproc/gtk-doc

post-patch:
	cd ${WRKSRC} && gtkdocize --copy

.include <bsd.port.mk>
