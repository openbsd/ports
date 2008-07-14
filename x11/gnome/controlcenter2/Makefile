# $OpenBSD: Makefile,v 1.37 2008/07/14 12:24:47 jasper Exp $

COMMENT=		GNOME control center

GNOME_PROJECT=		gnome-control-center
GNOME_VERSION=		2.20.3
PKGNAME=		control-center2-${VERSION}p6
SHARED_LIBS +=	gnome-window-settings 2.0      # .1.0
CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xft Xi Xinerama Xrandr \
		Xrender Xss art_lgpl_2 asn1 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c cairo com_err crypto \
		db dbus-1 dbus-glib-1 esd expat fam fontconfig freetype \
		gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-desktop-2 \
		gnome-keyring gnome-menu gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gsf-1 gssapi gstbase-0.10 gstreamer-0.10 \
		gthread-2.0 gtk-x11-2.0 jpeg krb5 m nspr4 nss3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pangoxft-1.0 pcre pixman-1 plc4 \
		plds4 png popt pthread rpcsvc smime3 softokn3 ssl ssl3 \
		startup-notification-1 stdc++ util xkbfile xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			gstaudio-0.10.>=0.1,gstinterfaces-0.10.>=0.1::multimedia/gstreamer-0.10/plugins-base \
			croco-0.6::www/libcroco \
			gnomekbd,gnomekbdui::x11/gnome/libgnomekbd \
			rsvg-2::x11/gnome/librsvg \
			xklavier::x11/gnome/libxklavier \
			metacity-private::x11/gnome/metacity \
			nautilus-extension.>=1::x11/gnome/nautilus \
			panel-applet-2::x11/gnome/panel
BUILD_DEPENDS=		:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils \
			:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::multimedia/gstreamer-0.10/plugins-good,-esd \
			::multimedia/gstreamer-0.10/plugins-good,-gconf \
			:scrollkeeper-*:textproc/scrollkeeper

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2 \
			--disable-schemas-install \
			--disable-hal \
			--disable-alsa \
			--enable-esd \
			--enable-gstreamer \
			--enable-aboutme
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/controlcenter2; \
        mv ${WRKINST}/${SYSCONFDIR}/* \
		${PREFIX}/share/examples/controlcenter2/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
