# $OpenBSD: Makefile,v 1.39 2010/10/11 08:19:20 jasper Exp $

COMMENT=	GNOME media utilities

GNOME_PROJECT=	gnome-media
GNOME_VERSION=	2.32.0
REVISION=	0

SHARED_LIBS +=	gnome-media-profiles 1.0      # .0.0

CATEGORIES=	x11

# GPLv2/GFDLv1.1/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 gtk-x11-2.0 ltdl m ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs vorbis vorbisfile xcb xml2 z xcb-render
WANTLIB += xcb-render-util gstaudio-0.10 gstinterfaces-0.10 canberra-gtk
WANTLIB += canberra gladeui-1

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::multimedia/gstreamer-0.10/plugins-good
LIB_DEPENDS=	:gstreamer-plugins-base->=0.10.25:multimedia/gstreamer-0.10/plugins-base \
		::audio/libcanberra \
		::devel/glade3

MODGNOME_HELP_FILES= Yes
USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= gnome-media

CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
		CDROM_HOST="bsd"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>

CONFIGURE_ARGS+= --sysconfdir="${SYSCONFDIR}/gnome"
