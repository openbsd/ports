# $OpenBSD: Makefile,v 1.24 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=		GNOME media utilities

GNOME_PROJECT=		gnome-media
GNOME_VERSION=		2.24.0.1
PKGNAME=		${DISTNAME}p12

SHARED_LIBS +=	gnome-media-profiles 0.0      # .0.0
CATEGORIES=		x11

# GPLv2/GFDLv1.1/LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation \
		c cairo crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pcre pixman-1 png \
		popt pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::multimedia/gstreamer-0.10/plugins-good,-gconf
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			bonoboui-2::x11/gnome/libbonoboui \
			gnomevfs-2::x11/gnome/vfs2 \
			gnomeui-2::x11/gnome/libgnomeui \
			gstreamer-0.10,gstbase-0.10::multimedia/gstreamer-0.10/core \
			gstinterfaces-0.10,gstaudio-0.10::multimedia/gstreamer-0.10/plugins-base \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-media \
			--disable-schemas-install \
			--disable-esound
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			CDROM_HOST="bsd"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
