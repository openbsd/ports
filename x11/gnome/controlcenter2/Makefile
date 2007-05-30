# $OpenBSD: Makefile,v 1.23 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"GNOME control center"

VERSION=		2.18.1
DISTNAME=		control-center-${VERSION}
PKGNAME=		control-center2-${VERSION}
SHARED_LIBS +=	gnome-window-settings 1.0      # .1.0

CATEGORIES=		x11 x11/gnome

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xft Xi Xinerama Xrandr Xrender Xss art_lgpl_2 \
		atk-1.0 audiofile bonobo-2 bonobo-activation bonoboui-2 \
		bz2 c cairo croco-0.6 crypto dbus-1 dbus-glib-1 esd \
		expat fam fontconfig freetype gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-desktop-2 gnome-keyring gnome-menu gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gsf-1 gstbase-0.10 \
		gstreamer-0.10 gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 png popt pthread \
		rpcsvc rsvg-2 ssl startup-notification-1 stdc++ util xkbfile \
		xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		gnomekbd,gnomekbdui::x11/gnome/libgnomekbd \
			panel-applet-2::x11/gnome/panel \
			xklavier::x11/gnome/libxklavier \
			metacity-private::x11/gnome/metacity \
			nautilus-extension.>=1::x11/gnome/nautilus \
			gstaudio-0.10.>=0.1,gstinterfaces-0.10.>=0.1::multimedia/gstreamer-0.10/plugins-base
BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=		::devel/desktop-file-utils \
			:shared-mime-info->=0.21:misc/shared-mime-info

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-hal \
			--disable-alsa \
			--enable-esd \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/controlcenter2; \
        mv ${WRKINST}/${SYSCONFDIR}/* \
		${PREFIX}/share/examples/controlcenter2/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
