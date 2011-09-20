# $OpenBSD: Makefile,v 1.1.1.1 2011/09/20 21:14:49 jasper Exp $

COMMENT=		home media solution that allows easy media sharing

GNOME_PROJECT=		rygel
GNOME_VERSION=		0.12.2

CATEGORIES=		multimedia

HOMEPAGE=		http://live.gnome.org/Rygel

# LGPLv2.1
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm e2fs-uuid expat fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gee gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gssdp-1.0 gstbase-0.10 gstpbutils-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 gtk-3 gupnp-1.0
WANTLIB += gupnp-av-1.0 gupnp-dlna-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 stdc++ xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS=		devel/libgee \
			net/gupnp/av \
			net/gupnp/dlna \
			x11/gtk+3
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		net/gupnp/vala>=0.10.0

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	vala

CONFIGURE_ARGS+=	--enable-mpris-plugin \
			--disable-media-export-plugin \
			--enable-gst-launch-plugin \
			--enable-external-plugin \
			--disable-mediathek-plugin \
			--disable-tracker-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=		sysconfdir=${PREFIX}/share/examples/rygel/

.include <bsd.port.mk>
