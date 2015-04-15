# $OpenBSD: Makefile,v 1.65 2015/04/15 09:40:54 ajacoutot Exp $

TRACKER_API=		1.0

SHARED_ONLY=		Yes

COMMENT=		home media solution that allows easy media sharing

GNOME_PROJECT=		rygel
GNOME_VERSION=		0.26.0
API_V=			2.6
REVISION=		1

SHARED_LIBS +=  rygel-core-${API_V}         0.0      # .2.6
SHARED_LIBS +=  rygel-renderer-${API_V}     0.0      # .2.6
SHARED_LIBS +=  rygel-server-${API_V}       0.0      # .2.6
SHARED_LIBS +=  rygel-renderer-gst-${API_V} 0.0      # .2.6
SHARED_LIBS +=  rygel-ruih-2.0            0.0 # 1.0

CATEGORIES=		multimedia

# LGPLv2.1
PERMIT_PACKAGE_CDROM= 	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gssdp-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 gupnp-1.0
WANTLIB += gupnp-av-1.0 gupnp-dlna-2.0 gupnp-dlna-gst-2.0 harfbuzz
WANTLIB += icudata icui18n icuuc kvm lzma m mediaart-2.0 orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3 unistring
WANTLIB += uuid xcb xcb-render xcb-shm xml2 z
WANTLIB += tracker-sparql-${TRACKER_API}
WANTLIB += lib/tracker-${TRACKER_API}/tracker-common
WANTLIB += lib/tracker-${TRACKER_API}/tracker-data

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		converters/libunistring \
			devel/libgee \
			net/gupnp/av \
			net/gupnp/dlna \
			x11/gnome/tracker>=${TRACKER_API}

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala

CONFIGURE_ARGS=		--with-media-engine=gstreamer \
			--enable-gst-launch-plugin \
			--enable-debug

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/rygel/

SUBST_VARS +=		API_V

post-install:
	rm ${PREFIX}/lib/rygel-${API_V}/{engines,plugins}/*.{a,la}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gtk-doc/html/

.include <bsd.port.mk>
