# $OpenBSD: Makefile,v 1.34 2009/11/29 09:20:39 ajacoutot Exp $

COMMENT=		GNOME media utilities

GNOME_PROJECT=		gnome-media
GNOME_VERSION=		2.28.1
PKGNAME=		${DISTNAME}p2

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
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 ltdl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs vorbis vorbisfile xcb xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::multimedia/gstreamer-0.10/plugins-good
LIB_DEPENDS=		glade-2.0::devel/libglade2 \
			gstaudio-0.10.>=1,gstinterfaces-0.10:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
			canberra-gtk,canberra.>=1::audio/libcanberra

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-media
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			CDROM_HOST="bsd"

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
