# $OpenBSD: Makefile,v 1.27 2015/05/05 17:00:17 sthen Exp $

COMMENT=		Gtk+ Widget for Displaying OpenStreetMap tiles

GH_ACCOUNT = 		nzjrs
GH_PROJECT = 		osm-gps-map
GH_TAGNAME = 		1.0.2
DISTNAME=		osm-gps-map-${GH_TAGNAME}
REVISION=		1

CATEGORIES=		geo x11

SHARED_LIBS +=  osmgpsmap-1.0             0.0 # 0.0

HOMEPAGE=		http://nzjrs.github.com/osm-gps-map/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi cairo
WANTLIB += cairo-gobject dbus-1 epoxy expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs soup-2.4 sqlite3 xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+3

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		osm_gps_mapdocdir=${PREFIX}/share/doc/osm-gps-map/

### autohell
AUTOMAKE_VERSION=	1.14
AUTOCONF_VERSION=	2.69
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/gtk-doc \
			x11/gnome/common

post-patch:
	cd ${WRKSRC} && \
		env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=yes ./autogen.sh
###

.include <bsd.port.mk>
