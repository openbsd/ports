# $OpenBSD: Makefile,v 1.1.1.1 2007/06/11 23:00:20 jasper Exp $

COMMENT=		GNOME media utilities

DISTNAME=		gnome-media-2.18.0
SHARED_LIBS +=	gnome-media-profiles 0.0      # .0.0
SHARED_LIBS +=	cddb-slave2          0.0      # .0.0
CATEGORIES=		x11 x11/gnome

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation c cairo crypto \
		dbus-1 dbus-glib-1 esd expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg m png popt pthread ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-media/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		::textproc/p5-XML-Parser \
			::textproc/scrollkeeper \
			::multimedia/gstreamer-0.10/plugins-good,-gconf
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			bonoboui-2::x11/gnome/libbonoboui \
			gnomevfs-2::x11/gnome/vfs2 \
			gnomeui-2::x11/gnome/libgnomeui \
			gstreamer-0.10,gstbase-0.10::multimedia/gstreamer-0.10/core \
			gstinterfaces-0.10,gstaudio-0.10::multimedia/gstreamer-0.10/plugins-base \
			pango-1.0,pangocairo-1.0,pangoft2-1.0::devel/pango
RUN_DEPENDS=		::devel/desktop-file-utils \
			::textproc/scrollkeeper

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-media \
			--disable-schemas-install
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			CFLAGS="-I${LOCALBASE}/include ${CFLAGS}" \
			CDROM_HOST="bsd"

CFLAGS+=		-O0

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
