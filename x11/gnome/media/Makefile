# $OpenBSD: Makefile,v 1.31 2009/10/11 23:01:22 jasper Exp $

# XXX: When the moon turns blue, and we have a new gstreamer,
# re-enable gst-mixer and such.

COMMENT=		GNOME media utilities

GNOME_PROJECT=		gnome-media
GNOME_VERSION=		2.28.1

SHARED_LIBS +=	gnome-media-profiles 0.0      # .0.0
CATEGORIES=		x11

# GPLv2/GFDLv1.1/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::multimedia/gstreamer-0.10/plugins-good,-gconf
LIB_DEPENDS=		glade-2.0::devel/libglade2 \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-media
CONFIGURE_ARGS+=	--disable-esound
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			CDROM_HOST="bsd"

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
