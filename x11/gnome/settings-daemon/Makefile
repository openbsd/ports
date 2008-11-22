# $OpenBSD: Makefile,v 1.5 2008/11/22 20:38:46 ajacoutot Exp $

COMMENT=		GNOME settings daemon

GNOME_PROJECT=		gnome-settings-daemon
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p3

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xxf86misc art_lgpl_2 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c cairo crypto dbus-1 \
		dbus-glib-1 esd expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gstaudio-0.10 gstbase-0.10 \
		gstinterfaces-0.10 gstreamer-0.10 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt pthread ssl startup-notification-1 util xkbfile \
		xklavier xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		notify::devel/libnotify \
			gnome-desktop-2.>=6::x11/gnome/desktop \
			gnomekbd::x11/gnome/libgnomekbd
BUILD_DEPENDS=		::multimedia/gstreamer-0.10/plugins-base,-gnome
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::multimedia/gstreamer-0.10/plugins-base,-gnome \
			::multimedia/gstreamer-0.10/plugins-good,-esd \
			::multimedia/gstreamer-0.10/plugins-good,-gconf

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2 \
			--disable-schemas-install \
			--disable-alsa \
			--enable-esd
# We can't have both OSS and GStreamer support. We choose for GStreamer.
CONFIGURE_ARGS+=	--enable-gstreamer

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
