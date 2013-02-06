# $OpenBSD: Makefile,v 1.30 2013/02/06 15:55:09 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		home media solution that allows easy media sharing

GNOME_PROJECT=		rygel
GNOME_VERSION=		0.16.4
REVISION=		0

SHARED_LIBS +=	rygel-core-1.0            0.0 # 0.0
SHARED_LIBS +=	rygel-renderer-1.0        0.0 # 0.0
SHARED_LIBS +=	rygel-server-1.0          0.0 # 0.0

TRACKER_VERSION=	0.14

CATEGORIES=		multimedia

HOMEPAGE=		http://live.gnome.org/Rygel

# LGPLv2.1
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += cairo-gobject e2fs-uuid expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gssdp-1.0 gstapp-0.10 gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gsttag-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 gupnp-1.0 gupnp-av-1.0 gupnp-dlna-1.0 m orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs soup-2.4 sqlite3
WANTLIB += xcb xcb-render xcb-shm xml2 z unistring icui18n
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 harfbuzz icudata
WANTLIB += icule icuuc kvm tracker-sparql-${TRACKER_VERSION}
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB += lib/tracker-${TRACKER_VERSION}/tracker-data

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		converters/libunistring \
			devel/libgee06 \
			net/gupnp/av \
			net/gupnp/dlna \
			x11/gtk+3 \
			x11/gnome/tracker>=${TRACKER_VERSION}

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
#MODGNOME_TOOLS=	vala

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static \
			--enable-mpris-plugin \
			--enable-media-export-plugin \
			--enable-gst-launch-plugin \
			--enable-external-plugin \
			--enable-tracker-plugin \
			--disable-mediathek-plugin

FAKE_FLAGS+=		sysconfdir=${PREFIX}/share/examples/rygel/

post-install:
	rm ${PREFIX}/lib/rygel-1.0/*.la

.include <bsd.port.mk>
