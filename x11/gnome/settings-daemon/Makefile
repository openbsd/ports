# $OpenBSD: Makefile,v 1.18 2009/06/08 17:59:15 ajacoutot Exp $

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		2.24.1
PKGNAME=		${DISTNAME}p9

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xxf86misc art_lgpl_2 atk-1.0 \
		bonobo-2 bonobo-activation bonoboui-2 c cairo crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gstbase-0.10 gstreamer-0.10 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png popt pthread ssl \
		startup-notification-1 util xkbfile xklavier xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		notify::devel/libnotify \
			gnome-desktop-2.>=6::x11/gnome/desktop \
			gnomekbd::x11/gnome/libgnomekbd \
			gstinterfaces-0.10,gstaudio-0.10::multimedia/gstreamer-0.10/plugins-base

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	control-center2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--disable-alsa \
			--disable-esd

# We can't have both OSS and GStreamer support for the media-keys plugin.
# We choose for GStreamer.
CONFIGURE_ARGS+=	--enable-gstreamer

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome-settings-daemon/gnome-settings-module.c

.include <bsd.port.mk>
