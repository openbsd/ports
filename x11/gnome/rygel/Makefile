# $OpenBSD: Makefile,v 1.50 2014/03/27 16:08:53 jasper Exp $

TRACKER_VERSION=	1.0

SHARED_ONLY=		Yes

COMMENT=		home media solution that allows easy media sharing

GNOME_PROJECT=		rygel
GNOME_VERSION=		0.22.0
API_V=			2.2

SHARED_LIBS +=  rygel-core-${API_V}         0.0      # .2.2
SHARED_LIBS +=  rygel-renderer-${API_V}     0.0      # .2.2
SHARED_LIBS +=  rygel-server-${API_V}       0.0      # .2.2
SHARED_LIBS +=  rygel-renderer-gst-${API_V} 0.0      # .2.2

CATEGORIES=		multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gssdp-1.0 gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 gupnp-1.0 gupnp-av-1.0
WANTLIB += gupnp-dlna-2.0 gupnp-dlna-gst-2.0 harfbuzz icui18n
WANTLIB += icuuc kvm m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += unistring uuid xcb xcb-render xcb-shm xml2 z icudata
WANTLIB += tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		converters/libunistring \
			devel/libgee \
			net/gupnp/av \
			net/gupnp/dlna \
			x11/gnome/tracker>=${TRACKER_VERSION}

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=		vala

# XXX undefined reference to `memset'
USE_LIBTOOL=		gnu

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/rygel/

SUBST_VARS +=		API_V

post-install:
	rm ${PREFIX}/lib/rygel-${API_V}/{engines,plugins}/*.la
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gtk-doc/html/

.include <bsd.port.mk>
