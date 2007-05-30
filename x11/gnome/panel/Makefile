# $OpenBSD: Makefile,v 1.26 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"GNOME panel"

DISTNAME=		gnome-panel-2.18.1
SHARED_LIBS=	panel-applet-2       2.17      # .2.17
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11 x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-panel/2.18/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcursor \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 \
		atk-1.0 audiofile bonobo-2 bonobo-activation bonoboui-2 \
		c cairo crypto dbus-1 dbus-glib-1 esd expat fam fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 png popt \
		pthread rpcsvc ssl startup-notification-1 stdc++ util xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper \
			::devel/desktop-file-utils
LIB_DEPENDS= 		gnome-desktop-2.>=5::x11/gnome/desktop \
			gnome-menu::x11/gnome/menus \
			wnck-1.>=20::devel/libwnck

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-eds \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-panel \
			--disable-schemas-install \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
