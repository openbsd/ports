# $OpenBSD: Makefile,v 1.17 2006/06/13 13:36:44 bernd Exp $

COMMENT=		"GNOME control center"

VERSION=		2.10.2
DISTNAME=		control-center-${VERSION}
PKGNAME=		control-center2-${VERSION}p2
SHARED_LIBS=		gnome-window-settings 1.0
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		xklavier::x11/gnome/libxklavier \
			metacity-private::x11/gnome/metacity \
			nautilus-extension.1::x11/gnome/nautilus \
			gstinterfaces-0.8.1.0::devel/gstreamer-plugins,minimal
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		::devel/desktop-file-utils

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext Xft Xss \
		Xinerama Xrandr Xrender Xxf86misc art_lgpl_2 atk-1.0.0.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c crypto \
		esd fontconfig freetype gconf-2 gnome-menu \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-desktop-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 \
		pangoxft-1.0.0.0 popt pthread ssl startup-notification-1 \
		xkbfile xml2 z gstreamer-0.8.5.0 cairo glitz png

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/controlcenter2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/controlcenter2/

.include <bsd.port.mk>
